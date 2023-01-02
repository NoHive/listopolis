import UIKit
import shared_preferences_ios
import awesome_notifications
import Flutter
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    FirebaseApp.configure()
    GeneratedPluginRegistrant.register(with: self)
      SwiftAwesomeNotificationsPlugin.setPluginRegistrantCallback { registry in
                SwiftAwesomeNotificationsPlugin.register(
                  with: registry.registrar(forPlugin: "io.flutter.plugins.awesomenotifications.AwesomeNotificationsPlugin")!)
          FLTSharedPreferencesPlugin.register(
                      with: registry.registrar(forPlugin: "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin")!)
                
    }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
