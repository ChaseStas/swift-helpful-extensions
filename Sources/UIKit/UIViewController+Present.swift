#if canImport(UIKit)
import Foundation
import UIKit

extension UIViewController {
    ///Present VC by current delay
    func presentWithDelay(_ delay: TimeInterval, _ viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)?) {
        if delay == 0 {
            present(viewControllerToPresent, animated: animated, completion: completion)
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                self.present(viewControllerToPresent, animated: animated, completion: completion)
            }
        }
    }
    
    ///Present VC by safe mode
    func presentSafely(_ viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)?) {
        if let nvc = viewControllerToPresent as? UINavigationController, let vc = nvc.visibleViewController, vc.classForCoder == self.classForCoder {
            print("Can't present on the same controller")
            return
        } else {
            if viewControllerToPresent.classForCoder == self.classForCoder && (self.classForCoder != UINavigationController.classForCoder() && viewControllerToPresent.classForCoder != UINavigationController.classForCoder()) {
                print("Can't present on the same controller")
                return
            }
            
            present(viewControllerToPresent, animated: animated, completion: completion)
        }
    }
    
    ///Present VC by current delay in safe mode
    func presentSafelyWithDelay(_ delay: TimeInterval, _ viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)?) {
        if delay == 0 {
            presentSafely(viewControllerToPresent, animated: animated, completion: completion)
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now9) + delay {
                self.presentSafely(viewControllerToPresent, animated: animated, completion: completion)
            }
        }
    }
}

#endif
