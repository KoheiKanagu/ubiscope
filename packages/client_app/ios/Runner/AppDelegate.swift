import UIKit
import CoreBluetooth
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, CLLocationManagerDelegate {
    private var wifiHostApi: WiFiHostApiImpl?
    
    private var wifiFlutterApi: WiFiFlutterApi?
    
    private var beaconHostApi: BeaconHostApiImpl?
    
    private var beaconFlutterApi: BeaconFlutterApi?
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
#if DEV
        GMSServices.provideAPIKey("AIzaSyBFkelWXsBM8-kO3n3sK7Xx5wo5QcdOK8E")
#elseif PROD
        GMSServices.provideAPIKey("AIzaSyBR7xmGHYXse4WmDWpPvWwu4WX_GVpGprk")
#endif
        
        GeneratedPluginRegistrant.register(with: self)
        
        let controller = window?.rootViewController as! FlutterViewController
        
        // Setup the WiFi APIs
        wifiFlutterApi = WiFiFlutterApi(binaryMessenger: controller.binaryMessenger)
        
        wifiHostApi = WiFiHostApiImpl()
        WiFiHostApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: wifiHostApi)
        
        // Setup the Beacon APIs
        beaconFlutterApi = BeaconFlutterApi(binaryMessenger: controller.binaryMessenger)
        
        let locationManager = CLLocationManager()
        locationManager.delegate = self
        
        beaconHostApi = BeaconHostApiImpl(locationManager: locationManager)
        BeaconHostApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: beaconHostApi)
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    func locationManager(_ manager: CLLocationManager, didRange beacons: [CLBeacon], satisfying beaconConstraint: CLBeaconIdentityConstraint) {
        beaconFlutterApi?.onEvent(
            results: beacons.map { e in
                Beacon(
                    uuid: e.uuid.uuidString,
                    major: e.major.int64Value,
                    minor: e.minor.int64Value,
                    rssi: Int64(e.rssi),
                    timestamp: e.timestamp.ISO8601Format(),
                    accuracy: e.accuracy,
                    proximity: Int64(e.proximity.rawValue),
                    txPower: nil,
                    bluetoothAddress: nil,
                    type: BeaconType.iBeacon
                )
            },
            completion: {}
        )
    }
}


private class WiFiHostApiImpl: WiFiHostApi {
    func isScanThrottleEnabled() throws -> Bool {
        return false
    }
    
    func startScan() throws -> Bool {
        return false
    }
    
    func stopScan() throws {
    }
}


private class BeaconHostApiImpl: BeaconHostApi {
    
    private var locationManager: CLLocationManager?
    
    private var identity : CLBeaconIdentityConstraint?
    
    init(locationManager: CLLocationManager) {
        self.locationManager = locationManager
    }
    
    func startScan(uuid: String?, major: Int64?, minor: Int64?) throws -> Bool {
        try stopScan()
        
        guard let target = UUID(uuidString: uuid ?? "") else {
            return false
        }
        
        let identity: CLBeaconIdentityConstraint?
        
        if let major = major, let minor = minor {
            identity = CLBeaconIdentityConstraint(
                uuid: target,
                major: CLBeaconMajorValue(major),
                minor: CLBeaconMinorValue(minor)
            )
        } else if let major = major {
            identity = CLBeaconIdentityConstraint(
                uuid: target,
                major: CLBeaconMajorValue(major)
            )
        } else {
            identity = CLBeaconIdentityConstraint(
                uuid: target
            )
        }
        
        guard let beaconIdentity = identity else {
            return false
        }
        
        locationManager?.startRangingBeacons(satisfying: beaconIdentity)
        return true
    }
    
    func stopScan() throws {
        if(identity != nil) {
            locationManager?.stopRangingBeacons(satisfying: identity!)
        }
        
        identity = nil
    }
}
