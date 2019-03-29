//
//  HJShowAlert.swift
//  QLDesignatedDriving
//
//  Created by houjian on 2019/2/7.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
import UIKit

public class HJShowAlert {

    static func showImgHUD( ) -> Void {
//        let url:URL! = Bundle.main.url(forResource: "wait1", withExtension: "gif")//必须放在文件目录下
//        let img: UIImage = try! UIImage.sd_animatedGIF(with:Data.init(contentsOf: url))
//        //        SVProgressHUD.setInfoImage(img.image!)
//        SVProgressHUD.setImageViewSize(CGSize.init(width: SCREEN_WIDTH, height: 300))
//        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.none)
//        SVProgressHUD.show(img, status: "")
        SVProgressHUD.setDefaultAnimationType(SVProgressHUDAnimationType.native)
        SVProgressHUD.setBackgroundColor(UIColor.white)
        SVProgressHUD.setDefaultStyle(SVProgressHUDStyle.light)
        SVProgressHUD.setImageViewSize(CGSize.init(width: 200, height: 200))
        SVProgressHUD.show()
    }
    
    static func showHud(msg: String) -> Void {
        SVProgressHUD.setBackgroundColor(UIColor.black)
        SVProgressHUD.setDefaultStyle(SVProgressHUDStyle.dark)
        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.clear)
        SVProgressHUD.setImageViewSize(CGSize.init(width: 50, height: 50))
        SVProgressHUD.showInfo(withStatus: msg)
        SVProgressHUD.dismiss(withDelay: 1)
    }
    static func showSuccessHud(msg: String) -> Void {
        SVProgressHUD.setBackgroundColor(UIColor.black)
        SVProgressHUD.setImageViewSize(CGSize.init(width: 50, height: 50))
        SVProgressHUD.showSuccess(withStatus: msg)
        SVProgressHUD.dismiss(withDelay: 2)
    }
    
    
}
