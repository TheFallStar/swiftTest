//
//  HttpMainModel.swift
//  QLDesignatedDriving
//
//  Created by houjian on 2019/2/5.
//  Copyright © 2019 csql. All rights reserved.
//

//import Foundation
struct HttpMainModel:Codable {
    var result: String? = ""
    var Message: String? = ""
    var Code:Int? = 0
    var Data:[String:String]? = [:]
//    private enum CodingKeys: String, CodingKey {
//        case h = "height"
//        case name
//        case age
//        case pet
//        case picture
//    }
}


