#if canImport(UIKit)
import Foundation
import UIKit

public enum Gradient {
    ///Create gradient color with parameters
    static func create(with colors: [UIColor], bounds: CGRect, startPoint: CGPoint = CGPoint(x: 0.5, y: 0.0), endPoint: CGPoint = CGPoint(x: 0.5, y: 1.0)) -> UIColor? {
        let gradient = CAGradientLayer()
        
        gradient.frame = bounds
        gradient.colors = colors.map({ $0.cgColor })
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        
        UIGraphicsBeginImageContext(gradient.bounds.size)
        
        guard let content = UIGraphicsGetCurrentContext() else { return nil }
        
        gradient.render(in: content)
        
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        
        UIGraphicsEndImageContext()
        
        return UIColor(patternImage: image)
    }
}

#endif
