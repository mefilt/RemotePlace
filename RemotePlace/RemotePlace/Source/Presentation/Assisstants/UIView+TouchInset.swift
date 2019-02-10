import UIKit

extension UIView {

    private struct AssociatedKeys {
        static var touchInsets = "touchInsets"
    }

    @IBInspectable var touchInsets: CGFloat {

        get {
            return associatedObject(for: &AssociatedKeys.touchInsets) ?? 0
        }

        set {
            setAssociatedObject(newValue, for: &AssociatedKeys.touchInsets)
        }
    }

    static func insetsInit() {
        Runtime.swizzle(for: self,
                        original: #selector(point(inside:with:)),
                        swizzled: #selector(swizzledPoint(inside:with:)))
    }

    @objc func swizzledPoint(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return contains(point, with: UIEdgeInsets.init(top: -touchInsets, left: -touchInsets, bottom: -touchInsets, right: -touchInsets)) ? true : swizzledPoint(inside: point, with: event)
    }

    private func contains(_ point: CGPoint, with insets: UIEdgeInsets) -> Bool {
        return bounds.inset(by: insets).contains(point)
    }
}

