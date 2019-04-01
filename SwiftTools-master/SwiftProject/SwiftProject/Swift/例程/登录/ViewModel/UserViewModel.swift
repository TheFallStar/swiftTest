//
//  UserViewModel.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/12.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
import Alamofire

class UserViewModel {
    
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
extension UserViewModel{
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
extension UserViewModel{
    
    func request() -> Void {
        NetworkTool().url(url).params(params).success { (dict) in
            let model = HttpMainModel.deserialize(from: dict)
            if self.url == codeUrl{
                HJShowAlert.showSuccessHud(msg: model!.Message)
                return
            }
            if self.url == loginUrl{
                let infoModel = UserInfo.deserialize(from: model!.Data)
//                UserTool.saveUser(info:infoModel!)
//                return
            }
            
            self.success?(dict)
            }.request()
    }
    
    func failureHandle(failure: FailureHandlerType? , stateCode: Int?, message: String) {
        
        failure?(stateCode ,message)
    }
    
    //取消请求
    func cancel() {
        httpRequest?.cancel()
    }
    
}


