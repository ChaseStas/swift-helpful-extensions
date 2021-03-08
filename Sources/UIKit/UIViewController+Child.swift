#if canImport(UIKit)
import Foundation
import UIKit

extension UIViewController {
    ///Add child VC to parent VC
    func add(child: UIViewController, frame: CGRect? = nil, to containerView: UIView? = nil) {
        addChild(child)
        
        child.willMove(toParent: self)
        if let frame = frame {
            child.view.frame = frame
        }
        
        (containerView ?? view).addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    ///Remove child VC from parent VC
    func removeChild() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}

#endif
