//
//  CustomButtonOrView.swift
//  Chime
//
//  Created by Michael McChesney on 3/4/15.
//  Copyright (c) 2015 Max McChesney. All rights reserved.
//

import UIKit

@IBDesignable class DesignableButton: UIButton {

    @IBInspectable var bottomColor: UIColor = UIColor(red:0.98, green:0.49, blue:0.2, alpha:1)
    @IBInspectable var topColor: UIColor = UIColor(red:0.98, green:0.85, blue:0.38, alpha:1)
    @IBInspectable var bottomColorAlpha: CGFloat = 1.0
    @IBInspectable var topColorAlpha: CGFloat = 0.8
    
    @IBInspectable var cornerSize: CGFloat = 0
    @IBInspectable var borderSize: CGFloat = 0
    @IBInspectable var borderColor: UIColor = UIColor.blackColor()
    @IBInspectable var borderAlpha: CGFloat = 1.0
    
    override func drawRect(rect: CGRect) {

        // set up border and cornerRadius
        self.layer.cornerRadius = cornerSize
        self.layer.borderColor = borderColor.colorWithAlphaComponent(borderAlpha).CGColor
        self.layer.borderWidth = borderSize
        self.layer.masksToBounds = true
        // set up gradient
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = rect
        let c1 = bottomColor.colorWithAlphaComponent(bottomColorAlpha).CGColor
        let c2 = topColor.colorWithAlphaComponent(topColorAlpha).CGColor
        gradientLayer.colors = [c2, c1]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        self.layer.insertSublayer(gradientLayer, atIndex: 0)

    }

}

@IBDesignable class DesignableView: UIView {
    
    @IBInspectable var bottomColor: UIColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
    @IBInspectable var topColor: UIColor = UIColor(red:0.57, green:0.57, blue:0.57, alpha:1)
    @IBInspectable var bottomColorAlpha: CGFloat = 1.0
    @IBInspectable var topColorAlpha: CGFloat = 0.8
    
    @IBInspectable var cornerSize: CGFloat = 0
    @IBInspectable var borderSize: CGFloat = 0
    @IBInspectable var borderColor: UIColor = UIColor.blackColor()
    @IBInspectable var borderAlpha: CGFloat = 1.0
    
    override func drawRect(rect: CGRect) {
        
        // set up border and cornerRadius
        self.layer.cornerRadius = cornerSize
        self.layer.borderColor = borderColor.colorWithAlphaComponent(borderAlpha).CGColor
        self.layer.borderWidth = borderSize
        self.layer.masksToBounds = true
        // set up gradient
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = rect
        let c1 = bottomColor.colorWithAlphaComponent(bottomColorAlpha).CGColor
        let c2 = topColor.colorWithAlphaComponent(topColorAlpha).CGColor
        gradientLayer.colors = [c2, c1]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        self.layer.insertSublayer(gradientLayer, atIndex: 0)
        
    }
    
}
