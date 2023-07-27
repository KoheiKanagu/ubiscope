package dev.kingu.ubiscope

import android.Manifest
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.net.wifi.WifiManager
import android.os.Build
import android.os.SystemClock
import androidx.core.content.ContextCompat.getSystemService
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import org.altbeacon.beacon.Beacon
import org.altbeacon.beacon.BeaconManager
import org.altbeacon.beacon.BeaconParser
import org.altbeacon.beacon.Identifier
import org.altbeacon.beacon.RangeNotifier
import org.altbeacon.beacon.Region
import java.time.LocalDateTime
import java.time.ZoneOffset
import java.time.format.DateTimeFormatter


private class WiFiHostApiImpl(
    private val wifiManager: WifiManager
) : WiFiHostApi {

    override fun isScanThrottleEnabled(): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            return wifiManager.isScanThrottleEnabled
        }
        return false
    }

    var repeatScan: Boolean = false

    override fun startScan(): Boolean {
        repeatScan = true
        return wifiManager.startScan()
    }

    override fun stopScan() {
        repeatScan = false
    }
}

private class BeaconHostApiImpl(
    private val beaconManager: BeaconManager
) : BeaconHostApi {

    private var region: Region? = null

    override fun startScan(uuid: String, major: Long?, minor: Long?): Boolean {
//        region = Region("dev.kingu.ubiscope.BeaconHostApiImpl", Identifier.parse(uuid), null, null)
        region = Region("dev.kingu.ubiscope.BeaconHostApiImpl", null, null, null)
        beaconManager.startRangingBeacons(region!!)
        return true;
    }

    override fun stopScan() {
        if (region != null) {
            beaconManager.stopRangingBeacons(region!!)
        }
    }
}

class MainActivity : FlutterActivity(), RangeNotifier {

    private var wifiHostApi: WiFiHostApiImpl? = null

    private var wifiFlutterApi: WiFiFlutterApi? = null

    private var wifiManager: WifiManager? = null

    private var beaconHostApi: BeaconHostApiImpl? = null

    private var beaconFlutterApi: BeaconFlutterApi? = null

    private val iBeaconFormat = "m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24"

    private val wifiScanReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val success = intent?.getBooleanExtra(WifiManager.EXTRA_RESULTS_UPDATED, false) ?: false

            if (success && wifiManager != null) {
                if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_DENIED) {
                    throw Exception("ACCESS_FINE_LOCATION permission denied")
                }

                val results = wifiManager!!.scanResults.map {
                    WiFi(
                        timestamp = LocalDateTime.ofEpochSecond(
                            (System.currentTimeMillis() - SystemClock.elapsedRealtime() + (it.timestamp / 1000)) / 1000,
                            0,
                            ZoneOffset.UTC
                        ).format(DateTimeFormatter.ISO_DATE_TIME),
                        ssid = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                            it.wifiSsid.toString()
                        } else {
                            it.SSID
                        },
                        bssid = it.BSSID,
                        rssi = it.level.toLong(),
                        frequency = it.frequency.toLong(),
                        capabilities = it.capabilities,
                        centerFreq0 = it.centerFreq0.toLong(),
                        centerFreq1 = it.centerFreq1.toLong(),
                        channelWidth = it.channelWidth.toLong(),
                    )
                }

                wifiFlutterApi!!.onEvent(results) {}

                if (wifiHostApi!!.repeatScan) {
                    wifiHostApi!!.startScan();
                }
            }
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Setup the WiFi APIs
        wifiFlutterApi = WiFiFlutterApi(flutterEngine.dartExecutor.binaryMessenger)

        wifiManager = getSystemService(Context.WIFI_SERVICE) as WifiManager?
        if (wifiManager == null) {
            throw Exception("WiFiManager is null")
        }

        wifiHostApi = WiFiHostApiImpl(wifiManager!!)
        WiFiHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, wifiHostApi)

        val intentFilter = IntentFilter()
        intentFilter.addAction(WifiManager.SCAN_RESULTS_AVAILABLE_ACTION)
        registerReceiver(wifiScanReceiver, intentFilter)

        // Setup the Beacon APIs
        beaconFlutterApi = BeaconFlutterApi(flutterEngine.dartExecutor.binaryMessenger)

        val beaconManager = BeaconManager.getInstanceForApplication(this)
        beaconManager.addRangeNotifier(this)
        beaconManager.beaconParsers.add(BeaconParser().setBeaconLayout(iBeaconFormat))

        beaconHostApi = BeaconHostApiImpl(beaconManager)
        BeaconHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, beaconHostApi)
    }

    override fun didRangeBeaconsInRegion(beacons: MutableCollection<Beacon>?, region: Region?) {
        val results = beacons?.map {
            dev.kingu.ubiscope.Beacon(
                uuid = it.id1.toString(),
                major = it.id2.toInt().toLong(),
                minor = it.id3.toInt().toLong(),
                rssi = it.rssi.toLong(),
                timestamp = LocalDateTime.ofEpochSecond(
                    it.firstCycleDetectionTimestamp / 1000 / 1000, 0, ZoneOffset.UTC
                ).format(DateTimeFormatter.ISO_DATE_TIME),
                accuracy = it.distance,
                proximity = null,
                txPower = it.txPower.toLong(),
                bluetoothAddress = it.bluetoothAddress,
                type = BeaconType.IBEACON,
            )
        }

        if (results != null) {
            beaconFlutterApi?.onEvent(results) {}
        }
    }
}
