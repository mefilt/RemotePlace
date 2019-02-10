import UIKit


extension UIView {
    
    var layoutInsets: UIEdgeInsets {
    
        if #available(iOS 11.0, *) {
            return UIEdgeInsets(top: safeAreaInsets.top,
                                left: safeAreaInsets.left,
                                bottom: safeAreaInsets.bottom,
                                right: safeAreaInsets.right)
        } else {
            return .zero
        }
    }
}
