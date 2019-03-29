//
//  UserInfo.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/14.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
//import DefaultsKit
struct UserInfo:Codable{
    var Token: String=""
    var Phone: String=""
    var Name: String=""
    var UnlockTime: String=""
    var SubsidiaryId: String=""
    var Id: String=""
    var Code:Int = 0
}
//public struct UserTool{
//    static func getUser( ) -> UserInfo {
//        let defaults = Defaults()
//        let key = Key<UserInfo>("user")
//        if defaults.has(key) {
//            let info:UserInfo=defaults.get(for:key)!
//            return info
//        }
//        return UserInfo.init()
//    }
//
//    static func saveUser(info: UserInfo) -> Void {
//        let defaults = Defaults()
//        let key = Key<UserInfo>("user")
//        defaults.set(info, for: key)
//
//    }
//}
