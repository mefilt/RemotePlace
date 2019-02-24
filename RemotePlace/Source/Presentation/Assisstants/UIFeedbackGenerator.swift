import UIKit
import AudioToolbox

enum ImpactFeedbackGenerator {

    static func impactOccurred() {
        if #available(iOS 10.0, *) {
            UIImpactFeedbackGenerator(style: .medium)
                .impactOccurred()
        }
    }

    static func impactOccurredOrVibrate() {
        if #available(iOS 10.0, *) {
            UIImpactFeedbackGenerator(style: .medium)
                .impactOccurred()
        } else {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        }
    }
}

