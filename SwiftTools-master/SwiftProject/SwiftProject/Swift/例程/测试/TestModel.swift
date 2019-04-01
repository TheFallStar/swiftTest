//
//  TestModel.swift
//  SwiftProject
//
//  Created by Steven on 2019/4/1.
//  Copyright © 2019 yunna. All rights reserved.
//

import Foundation
struct TestModel: Codable {
    var list:[channelResults?]
    var totalSize:Int?
}

struct channelResults: Codable {
    var bigCover:String?
    var channelId:Int
}
