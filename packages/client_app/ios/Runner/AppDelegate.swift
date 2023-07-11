import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
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
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
