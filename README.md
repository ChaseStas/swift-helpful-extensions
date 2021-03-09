# Swift Helpful extensions
This repository contains helpful extension for UIKit/SwiftUI projects

### UIKit
Can easily create gradient color:
```swift
currentView.backgroundColor = Gradient.create(with: [.white, .black], bounds: currentView.bounds)
```

Can easily create UIColor by RGB values and by Hex value:
```swift
currentView.backgroundColor = UIColor(red: 148, green: 16, blue: 88)
anotherView.backgroundColor = UIColor(hex: "f3d3da")
```

Can easily add underLine to your label:
```swift
currentLabel.underline()
```

Can easily add (remove) child VC to (from) parent VC:
```swift
class FirstViewController: UIViewController {

    let someView = UIView()
    let secondViewController = SecondViewController()

    viewDidLoad() {
        ...
        add(child: secondViewController, to: someView)
        secondViewController.removeChild()
    }
}

class SecondViewController: UIViewController {

}
```

Can present VC in safe mode or with some delay:
```swift
class FirstViewController: UIViewController {

    let secondViewController = SecondViewController()
    let thirdViewController = ThireViewController()

    viewDidLoad() {
        ...
        presentWithDelay(TimeInterval(1.5), secondViewController, animated: true, completion: nil)
        presentSafely(secondViewController, animated: true, completion: nil))
    }
}

class SecondViewController: UIViewController {

}

class ThirdViewController: UIViewController {

}
```

Can take element of array in safe mode:
```swift
class ViewController: UIViewController {

    let someArray: [Int] = [0, 1, 2, 3, 4, 5]

    viewDidLoad() {
        ...
        for i in 0...10 {
            print(someArray[exists: i])
        }
    }
}
```

### SwiftUI

### Foundation

**Example of usage**:
```swift
struct Test {

}
```
