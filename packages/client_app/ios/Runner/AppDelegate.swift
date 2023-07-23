import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    private var wifiHostApi: WiFiHostApiImpl?
    
    private var wifiFlutterApi: WiFiFlutterApi?
    
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
        
        wifiFlutterApi = WiFiFlutterApi(binaryMessenger: controller.binaryMessenger)
        
        wifiHostApi = WiFiHostApiImpl()
        WiFiHostApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: wifiHostApi)
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
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

