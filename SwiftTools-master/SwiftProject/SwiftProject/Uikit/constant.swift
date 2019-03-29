//
//  constant.swift
//  SwiftDemo
//
//  Created by zhengwenming on 2016/10/28.
//  Copyright © 2016年 郑文明. All rights reserved.
//

import Foundation

import UIKit




let kScreenWidth:CGFloat    = UIScreen.main.bounds.width
let kScreenHeight:CGFloat   = UIScreen.main.bounds.height
let kNavbarHeight:CGFloat   = 64
let TheUserDefaults         = UserDefaults.standard
let kDeviceVersion          = Float(UIDevice.current.systemVersion)
let kTabBarHeight:CGFloat   = 49
let kThemeColor     = UIColor(red: 63.0/255.0, green: 67.0/255.0, blue: 76.0/255.0, alpha: 1.0)

let kBackGroundColor     = UIColor(red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)

public let HexRGB:((Int) -> UIColor) = { (rgbValue : Int) -> UIColor in
    return HexRGBAlpha(rgbValue,1.0)
}

public let HexRGBAlpha:((Int,Float) -> UIColor) = { (rgbValue : Int, alpha : Float) -> UIColor in
    return UIColor(red: CGFloat(CGFloat((rgbValue & 0xFF0000) >> 16)/255), green: CGFloat(CGFloat((rgbValue & 0xFF00) >> 8)/255), blue: CGFloat(CGFloat(rgbValue & 0xFF)/255), alpha: CGFloat(alpha))
    }


/// 根据imageName创建一个UIImage
public let imageNamed:((String) -> UIImage? ) = { (imageName : String) -> UIImage? in
    return UIImage.init(named: imageName)
    }


func kVCFromSb(name: String,identifier: String) -> (UIViewController) {
    let storyBoard = UIStoryboard.init(name: name, bundle: nil)
    let vc = storyBoard.instantiateViewController(withIdentifier: identifier)
    return vc
    }

public let AppVersion = Bundle.main.infoDictionary ?? Dictionary()

let safeTop:CGFloat  = kScreenHeight >= 812.0 ? 88:64

let baseURL:String = "http://api-gateway.100bue.com"+"/asdasdasd"

public var aaa: URL {
    return URL.init(string: baseURL + "http://api-gateway.100bue.com")!
}
let aaaaaa:String = baseURL + "100bue.com"
