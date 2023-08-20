//
//  UIColor + Ext.swift
//  RandomColorsApp
//
//  Created by Fairooz Rahman on 20/8/23.
//

import UIKit

extension UIColor {
    
    static func randrom() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
