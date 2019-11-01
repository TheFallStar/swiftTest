//
//  HJRequests.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/1.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
import Alamofire
import Reachability
enum HttpRequestType {
    case get
    case post
}

class NetworkKit {
    
    typealias SuccessHandlerType = ((HttpMainModel) -> Void)
    typealias FailureHandlerType = ((Int?, String) ->Void)
    
    private var requestType: HttpRequestType = .post//请求类型
    private var url: String?//URL
    private var params: [String: Any]?//参数
    private var success: SuccessHandlerType?//成功的回调
    private var failure: FailureHandlerType?//失败的回调
    private var httpRequest: Request?
    private var manager:Alamofire.SessionManager!
//    private var reachability: Reachability!
    private var headers: HTTPHeaders?
}
//NetworkKit属性的设置
extension NetworkKit{
    
    func headers(_ headers: HTTPHeaders?) -> Self {
        self.headers = headers
        return self
    }
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
extension NetworkKit{
    
    ///发起请求 设置好相关参数后再调用
    func request() -> Void {
        let reachability = Reachability.init(hostname: baseURL)
        if(reachability?.connection == Optional.none){
            HJShowAlert.showHud(msg:NoNetError)
            return
        }
        var dataRequest: DataRequest?//alamofire请求后的返回值
        //发起请求
        if let URLString = url {
            let method = requestType == .get ? HTTPMethod.get : HTTPMethod.post
            // 设置请求的超时时间
            self.manager = Alamofire.SessionManager.default
            self.manager.session.configuration.timeoutIntervalForRequest = 10
              
             dataRequest =  self.manager.request(URLString, method:method, parameters: params, encoding:JSONEncoding.default)
            httpRequest = dataRequest
        }
        HJShowAlert.showImgHUD()
        
        dataRequest?.responseJSON{
            (response) in
            SVProgressHUD.dismiss()
            switch response.result{
                case .success:
                    do {
                        let model:HttpMainModel = try JSONDecoder().decode(HttpMainModel.self, from: response.data!)
                        self.success?(model)
                    } catch {
                         print("error: \(error)")
                    }
                
                case .failure:
                    print("错误信息:\n"+"\(response.debugDescription)")
//                    HJShowAlert.showHud(msg: response.debugDescription)
            }
        }
        SVProgressHUD.dismiss()
        
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


