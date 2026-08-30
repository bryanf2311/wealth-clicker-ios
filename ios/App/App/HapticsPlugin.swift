import Foundation
import UIKit
import Capacitor

@objc(AppHapticsPlugin)
public class HapticsPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "AppHapticsPlugin"
    public let jsName = "Haptics"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "impact", returnType: CAPPluginReturnNone),
        CAPPluginMethod(name: "notify", returnType: CAPPluginReturnNone)
    ]

    @objc public func impact(_ call: CAPPluginCall) {
        let style = call.getString("style") ?? "heavy"
        let generator: UIImpactFeedbackGenerator
        switch style {
        case "light":
            generator = UIImpactFeedbackGenerator(style: .light)
        case "medium":
            generator = UIImpactFeedbackGenerator(style: .medium)
        case "rigid":
            generator = UIImpactFeedbackGenerator(style: .rigid)
        default:
            generator = UIImpactFeedbackGenerator(style: .heavy)
        }
        generator.impactOccurred()
        call.resolve()
    }

    @objc public func notify(_ call: CAPPluginCall) {
        let type = call.getString("type") ?? "success"
        let generator = UINotificationFeedbackGenerator()
        switch type {
        case "warning":
            generator.notificationOccurred(.warning)
        case "error":
            generator.notificationOccurred(.error)
        default:
            generator.notificationOccurred(.success)
        }
        call.resolve()
    }
}
