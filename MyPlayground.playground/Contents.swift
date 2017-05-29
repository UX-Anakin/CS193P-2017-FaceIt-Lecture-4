//: Playground - noun: a place where people can play

import UIKit
import CoreGraphics

/*
 A view represents a rectangular area
 A vire has only one superview, but it can have many subview 
 
 UIWindow at the very very top of the view hierarchy
 
 You can be doen in code as well
 func addSubview(_ view: UIView) // sent to view superview
 func removeFromSuperview() // sent to the view you want to remove (not its superview)
 
 A UIView's initializer is different if it comes out of a storyboard
 
 init(frame: CGRect) // initializer if the UIView is created in code
 init(coder: NSCoder) // initializer if the UIView comes out of a storyboard -- > Gets coded into an XML file.
 
 If you need an initializer, implement them both
 func setup() {}
 
 override init(frame: CGRect) { // a designed initializer
    super.init(frame: frame)
    setup()
 }
 
 required init(coder aDecoder: NSCoder) { // a required initializer
    super.init(coder: aDecoder)
    setup()
 }
 
Another alternative to initializers in UIView ...
 awakeFromNib() // this is only called if the UIView came out of a storyboard
 
 */

// CGFloat : Always use this instead of Double or Float for anything to do with a UIView's coordinate
// CGPoint simply a struct with two CGFloat in it: x and y 

var point = CGPoint(x: 37.0, y: 55.2)
point.x += 20.0
point.y -= 30

// CGSize Also a struct with two CGFloats in it: width and height

var size = CGSize(width: 100.0, height: 50.0)
size.width += 42.5
size.height += 75

// CGRect a struct with a CGPoint and a CGSize in 
//struct CGRect {
//    var origin: CGPoint
//    var size: CGSize
//}

let rect = CGRect(origin: point, size: size)

/*
 origin is Upper left
 Unit are points, not pixels
 
 var contentScaleFactor: CGFloat // how many pixels per point are there
 
 The boundaries of where drawing happenss
 var bounds: CGRect 
 
 Where is the UIView?
 var center: CGPoint // the center of the UIView in its superviews coordinate system 
 var frame: CGRect // the rect containing a UIView in its superview coordinate system
 
 */

let labelRect = CGRect(x: 20, y: 20, width: 100, height: 100)
let label = UILabel(frame: labelRect) // UIlabel is a subclass of UIView
label.text = "Hello"

/*
 If you view needs to be redrawn, let the system know that by calling 
 setNeedsDisplay()
 setNeedsDisplay(_ rect: CGRect) // rect is the area that needs to be redrawn
 */


UIGraphicsGetCurrentContext() // gives a context you can use in draw
let path = UIBezierPath()

path.move(to: CGPoint(x: 80, y: 50))
path.addLine(to: CGPoint(x: 140, y: 150))
path.addLine(to: CGPoint(x: 10, y: 150))
path.close()

UIColor.green.setFill() // note setFill is a method in UIColor, not UIBezierPath
UIColor.red.setStroke() // note setStroke is a method in UIColor, not UIBezierPath
path.lineWidth = 3.0 // linewidth is a property in UIBezierPath, not UIColor
path.fill()


/*
 UIcolor
 */

let green = UIColor.green

var backgroundColor: UIColor // Backgroaund color of a UIView 

let semitransparentYelow = UIColor.yellow.withAlphaComponent(0.5)
// Alpha is between 0.0 (fully transparent) and 1.0 (fully opaque)

/*
 Drawing Text 
 
 
 */
