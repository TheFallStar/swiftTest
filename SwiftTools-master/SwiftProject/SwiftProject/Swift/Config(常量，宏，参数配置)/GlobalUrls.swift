//
//  GlobalUrls.swift
//  QLDesignatedDriving
//
//  Created by houjian on 2019/2/5.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation

enum net {
    case NotReachable
    case ReachableViaWiFi
    case ReachableViaWWAN
}

let baseURL:String = "http://app.ncdev.chuangshiqilin.cn/"
// 缓存键值
let intervalTime:String = "interval"

//public var aaa: URL {
//    return URL.init(string: baseURL + "http://api-gateway.100bue.com")!
//}
//获取验证码
let codeUrl:String=baseURL + "driver/Login/GetSMSCode"
//获取验证码
let loginUrl:String=baseURL + "driver/Login"
//获取版本号
let Url_Driver_Version:String=baseURL + "base/App/Version"
//获取订单
let OrderPrice:String=baseURL + "financial/Price/OrderPrice"
//在线支付
let CollectMoneyOnLine:String=baseURL + "order/Orderoperation/CollectMoneyOnLine"
//现金支付
let CollectMoneyOffLine:String=baseURL + "order/Orderoperation/CollectMoneyOffLine"
//取消订单
let DriverCancelOrder:String=baseURL + "order/Orderoperation/DriverCancelOrder"
//订单详情
let CurrentOrderInfo:String=baseURL + "order/Orderoperation/CurrentOrderInfo"
//订单详情
let OrderInfo:String=baseURL + "order/Order/OrderInfo"
//订单轨迹
let ReturnOrderPoint:String=baseURL + "order/Orderoperation/ReturnOrderPoint"
//添加代金卡
let DriverGetGiftCard:String=baseURL + "operation/GiftCardCate/DriverGetGiftCard"

