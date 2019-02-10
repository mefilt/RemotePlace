import Foundation

enum Runtime {
    static func swizzle(for forClass: AnyClass, original: Selector, swizzled: Selector) {
        let originalMethod = class_getInstanceMethod(forClass, original)!
        let swizzledMethod = class_getInstanceMethod(forClass, swizzled)!
        method_exchangeImplementations(originalMethod, swizzledMethod)
    }

    static func swizzleClass(for forClass: AnyClass, original: Selector, swizzled: Selector) {        
        let originalMethod = class_getClassMethod(forClass, original)!
        let swizzledMethod = class_getClassMethod(forClass, swizzled)!
        method_exchangeImplementations(originalMethod, swizzledMethod)
    }
}

struct Swizzle {

    typealias Initializer = (() -> Void)
    let initializers: [Initializer]

    func start() {
        initializers.forEach { call in
            call()
        }
    }
}
