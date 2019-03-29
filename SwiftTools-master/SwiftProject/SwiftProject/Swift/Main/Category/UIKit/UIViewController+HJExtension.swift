//
//  UIViewController+HJExtension.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/13.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation

extension UIViewController {
    
    public func alert(msg: String ,statue:Int) {
       SVProgressHUD.popActivity()
        SVProgressHUD.setBackgroundColor(UIColor.black)
//        [SVProgressHUD setImageViewSize:CGSizeMake(50, 50)];
        SVProgressHUD.setCornerRadius(5)
        SVProgressHUD.setDefaultStyle(SVProgressHUDStyle.dark)
        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.clear)
        SVProgressHUD.setFont(UIFont.systemFont(ofSize: 18))
        SVProgressHUD.showInfo(withStatus: msg)
        SVProgressHUD.setImageViewSize(CGSize.init(width: 0, height: -10))
        SVProgressHUD .dismiss(withDelay: 0.7) {
            if statue==1{
                self.navigationController?.popViewController(animated: true)
                return
            }
            if statue==2{
                self.navigationController?.popToRootViewController(animated: true)
                return
            }
        }
    }
    
}
