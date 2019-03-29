//
//  GlobalDefines.swift
//  QLDesignatedDriving
//
//  Created by houjian on 2019/2/5.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation

@_exported import CoreAnimator
//@_exported import Y

//typealias Codable = Decodable & Encodable

let SCREEN_WIDTH:CGFloat    = UIScreen.main.bounds.width
let SCREEN_HEIGHT:CGFloat   = UIScreen.main.bounds.height
let safeTop:CGFloat  = SCREEN_HEIGHT >= 812.0 ? 88:64
let safeTab:CGFloat  = SCREEN_HEIGHT >= 812.0 ? 84:40
let safeBottom:CGFloat  = SCREEN_HEIGHT >= 812.0 ? 20:0
let iPhoneX:Bool = SCREEN_HEIGHT >= 812.0 ? true :false
let iPhoneSE:Bool = SCREEN_WIDTH == 320.0 ? true :false

let infoDictionary = Bundle.main.infoDictionary ?? Dictionary()
let User_UUID = UIDevice.current.identifierForVendor?.uuidString
let TheUserDefaults         = UserDefaults.standard
let kDeviceVersion          = UIDevice.current.systemVersion
let majorVersion :AnyObject? = infoDictionary ["CFBundleShortVersionString"] as AnyObject//主程序版本号

let kBackGroundColor     = UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)

public let HexRGB:((Int) -> UIColor) = { (rgbValue : Int) -> UIColor in
    return HexRGBAlpha(rgbValue,1.0)
}

public let HexRGBAlpha:((Int,Float) -> UIColor) = { (rgbValue : Int, alpha : Float) -> UIColor in
    return UIColor(red: CGFloat(CGFloat((rgbValue & 0xFF0000) >> 16)/255), green: CGFloat(CGFloat((rgbValue & 0xFF00) >> 8)/255), blue: CGFloat(CGFloat(rgbValue & 0xFF)/255), alpha: CGFloat(alpha))
}

// 根据imageName创建一个UIImage
public let imageNamed:((String) -> UIImage? ) = { (imageName : String) -> UIImage? in
    return UIImage.init(named: imageName)
}

func kVCFromSb(name: String,identifier: String) -> (UIViewController) {
    let storyBoard = UIStoryboard.init(name: name, bundle: nil)
    let vc = storyBoard.instantiateViewController(withIdentifier: identifier)
    return vc
}


var hFont: (CGFloat) -> UIFont = {size in
    return UIFont.systemFont(ofSize: size);
}
