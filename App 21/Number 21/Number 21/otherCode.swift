//
//  otherCode.swift
//  Number 21
//
//  Created by Abdullah on 26.08.2017.
//  Copyright © 2017 abdullah. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK: - Background Color
    public class func darkBlueColor() -> UIColor {
        return UIColor(red: 79/255, green: 93/255, blue: 109/255, alpha: 1.0)
    }
}

extension UIFont {
    
    // MARK: - All Font Type
    
    public class func allFontType(withSize size: CGFloat) -> UIFont {
        return UIFont(name: "Avenir-Book", size: size)!
    }
}

extension UIButton {
    
    func allDesign(){
        self.backgroundColor = UIColor.darkBlueColor()
        self.titleLabel?.font = UIFont.allFontType(withSize: 36)
        self.setTitleColor(UIColor.white, for: UIControlState.normal)
        self.layer.cornerRadius = 5
    }
    
    func otherDesign() {
        self.setTitleColor(UIColor.darkBlueColor(), for: UIControlState.normal)
        self.titleLabel?.font = UIFont.allFontType(withSize: 36)
    }
    
    func numberDesign(){
        self.backgroundColor = UIColor.clear
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 20
        self.setTitleColor(UIColor.white, for: UIControlState.normal)
        self.titleLabel?.font = UIFont.allFontType(withSize: 25)
    }
    
    func secilecekButtonDesign(){
        self.backgroundColor = UIColor.white
        self.layer.borderColor = UIColor.darkBlueColor().cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 30
        self.setTitleColor(UIColor.darkBlueColor(), for: UIControlState.normal)
        self.titleLabel?.font = UIFont.allFontType(withSize: 25)
    }
    
    func gameButtonDesign(){
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.darkBlueColor().cgColor
        self.setTitleColor(UIColor.darkBlueColor(), for: UIControlState.normal)
        self.titleLabel?.font = UIFont.allFontType(withSize: 20)
    }
}
