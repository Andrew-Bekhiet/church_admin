import UIKit
import Flutter
import flutter_local_notifications
import FirebaseAuth

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // This is required to make any communication available in the action isolate.
    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }
    
    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)

    if let registrar = engineBridge.pluginRegistry.registrar(forPlugin: "ScreenCaptureAttemptsStreamHandler") {
      ScreenCaptureAttemptsStreamHandler.register(with: registrar)
    }
  }

  // Handle Firebase Auth / reCAPTCHA and other OAuth redirects (e.g., com.googleusercontent.apps callbacks)
  override func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    if Auth.auth().canHandle(url) {
      return true
    }

    return super.application(app, open: url, options: options)
  }
}

class ScreenCaptureAttemptsStreamHandler: NSObject, FlutterStreamHandler {
  private var observers: [NSObjectProtocol] = []

  static func register(with registrar: FlutterPluginRegistrar) {
    FlutterEventChannel(
      name: "church_admin/screen_capture_attempts",
      binaryMessenger: registrar.messenger()
    ).setStreamHandler(ScreenCaptureAttemptsStreamHandler())
  }

  func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
    observers = [
      NotificationCenter.default.addObserver(
        forName: UIApplication.userDidTakeScreenshotNotification,
        object: nil,
        queue: .main
      ) { _ in events("screenshot") },
      NotificationCenter.default.addObserver(
        forName: UIScreen.capturedDidChangeNotification,
        object: nil,
        queue: .main
      ) { notification in
        if (notification.object as? UIScreen)?.isCaptured == true {
          events("screen_recording")
        }
      },
    ]

    let isAlreadyCaptured = UIApplication.shared.connectedScenes.contains {
      ($0 as? UIWindowScene)?.screen.isCaptured == true
    }

    if isAlreadyCaptured {
      events("screen_recording")
    }

    return nil
  }

  func onCancel(withArguments arguments: Any?) -> FlutterError? {
    observers.forEach { NotificationCenter.default.removeObserver($0) }
    observers = []

    return nil
  }
}
