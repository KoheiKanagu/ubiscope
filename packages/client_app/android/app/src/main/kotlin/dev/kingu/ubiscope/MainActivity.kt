package dev.kingu.ubiscope

import android.Manifest
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.net.wifi.WifiManager
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

private class WiFiHostApiImplementation(
    private val wifiManager: WifiManager?
) : WiFiHostApi {
    override fun startScan(): Boolean {
        return wifiManager?.startScan() ?: false
    }
}


class MainActivity : FlutterActivity() {
    private var wifiFlutterApi: WiFiFlutterApi? = null

    private var wifiManager: WifiManager? = null

    private val wifiScanReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val success = intent?.getBooleanExtra(WifiManager.EXTRA_RESULTS_UPDATED, false) ?: false
            println("hoge: onReceive")

            if (success && wifiManager != null) {
                if (checkSelfPermission(Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_DENIED) {
                    throw Exception("ACCESS_FINE_LOCATION permission denied")
                }

                val results = wifiManager!!.scanResults.map {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                        WiFi(
                            it.wifiSsid.toString(),
                            it.BSSID,
                            it.level.toLong(),
                            it.frequency.toLong(),
                        )
                    } else {
                        WiFi(
                            it.SSID,
                            it.BSSID,
                            it.level.toLong(),
                            it.frequency.toLong(),
                        )
                    }
                }

                wifiFlutterApi!!.onReceiveWiFiList(results) {}
            }
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        wifiFlutterApi = WiFiFlutterApi(flutterEngine.dartExecutor.binaryMessenger)
        wifiManager = getSystemService(Context.WIFI_SERVICE) as WifiManager?

        WiFiHostApi.setUp(
            flutterEngine.dartExecutor.binaryMessenger, WiFiHostApiImplementation(wifiManager)
        )

        val intentFilter = IntentFilter()
        intentFilter.addAction(WifiManager.SCAN_RESULTS_AVAILABLE_ACTION)
        registerReceiver(wifiScanReceiver, intentFilter)

        println("hoge")
    }
}
