//
//  HJRequests.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/1.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
import Alamofire
class NetworkTool {
    
    typealias SuccessHandlerType = (([String: Any]) -> Void)
    typealias FailureHandlerType = ((Int?, String) ->Void)
    
    private var requestType: HttpRequestType = .post//请求类型
    private var url: String?//URL
    private var params: [String: Any]?//参数
    private var success: SuccessHandlerType?//成功的回调
    private var failure: FailureHandlerType?//失败的回调
    private var httpRequest: Request?
    //    private var headers: HTTPHeaders?
}
//NetworkKit属性的设置
extension NetworkTool{
    ///设置url
    func url(_ url: String?) -> Self {
        self.url = url
        return self
    }
    
    ///设置post/get 默认post
    func requestType(_ type:HttpRequestType) -> Self {
        self.requestType = type
        return self
    }
    
    ///设置参数
    func params(_ params: [String: Any]?) -> Self {
        self.params = params
        return self
    }
    
    ///成功的回调
    func success(_ handler: @escaping SuccessHandlerType) -> Self {
        self.success = handler
        return self
    }
    
    ///失败的回调
    func failure(handler: @escaping FailureHandlerType) -> Self {
        self.failure = handler
        return self
    }
    
}
extension NetworkTool{
    
    func request() -> Void {
        print("================================================")
        print("\n"+"接口路径:\n"+"\(String(describing: url))\n"+"输入参数：\n"+"\(String(describing: params))")
        print("================================================")
        //参数加密
//        let keyString:String = BANetManager.randomString(withLength: 32)
//        let originString:String = RSA.dataTOjsonString(params)
//        var key:String = RSA.encryptString(keyString, publicKey: Rsa_PublicKey)
//        let content:String = aesEncryptString(originString, keyString);
//        key  = key.stringByReplacingstringByReplacingString(text: " ", replacText: "")
//        key  = key.stringByReplacingstringByReplacingString(text: "\r", replacText: "")
//        key  = key.stringByReplacingstringByReplacingString(text: "\n", replacText: "")
//        var dict:[String:String] = [:]
//        dict.updateValue(key, forKey: "key")
//        dict.updateValue(content, forKey: "content")
//        dict.updateValue(BANetManager.getTimeStamp(), forKey: "time")
//
//        let userDataArr:Array = NSArray.bg_array(withName: "loginModel")!
//
////        NSArray* userDataArr=[NSArray bg_arrayWithName:LoginModelKey];
//
//        let info:LoginModel=userDataArr.first! as! LoginModel
        
//        let info:UserInfo=UserTool.getUser()
        var headers: HTTPHeaders = [:
        ]
//        if !(info.phone.count == 0) {
//            headers.updateValue(info.token, forKey: "UserToken")
//            headers.updateValue("iOS", forKey: "device")
//            headers.updateValue("1.0.0", forKey: "version")
//        }

        
    NetworkKit().headers(headers).url(url).params(params).requestType(requestType).success { (dict) in
            
            let httpModel = HttpMainModel.deserialize(from: dict)
            print("回参:\n"+"\(dict)")
        if(httpModel?.Code == 200 || httpModel?.Code == 207){
                self.success!(dict)
                return
            }
            HJShowAlert.showHud(msg: httpModel!.Message)
            }.request()
    }
    
    func failureHandle(failure: FailureHandlerType? , stateCode: Int?, message: String) {
        
        failure?(stateCode ,message)
    }
    
    //登录弹窗 - 弹出是否需要登录的窗口
    func alertLogin(_ title: String?) {
        //TODO: 跳转到登录页的操作：
    }
    //取消请求
    func cancel() {
        httpRequest?.cancel()
    }
    
}


