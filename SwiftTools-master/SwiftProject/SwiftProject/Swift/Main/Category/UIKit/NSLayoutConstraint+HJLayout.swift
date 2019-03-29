//
//  NSLayoutConstraint+HJLayout.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/13.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
extension NSLayoutConstraint {
    @IBInspectable var safeHeight: Bool {
        get {
            return iPhoneX
        }
        set {
            if newValue{
                constant = iPhoneX ? 88:64
            }
        }
    }
    
    @IBInspectable var safeLength: Bool {
        get {
            return iPhoneSE
        }
        set {
            if newValue{
                constant = iPhoneSE ? 375:SCREEN_HEIGHT
            }
        }
    }
}
