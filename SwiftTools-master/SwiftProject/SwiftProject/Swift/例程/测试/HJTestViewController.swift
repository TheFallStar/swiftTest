//
//  HJTestViewController.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/1/30.
//  Copyright © 2019 csql. All rights reserved.
// 测试接口 http://mobile.ximalaya.com/radio-station/v1/subscribe-channel/list
//http://ceshi.chuangshiqilin.com/customersv1/get_slides
import UIKit
class HJTestViewController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        var params: [String:String] = [:]
        params.updateValue("乌鲁木齐市信达", forKey: "city")
        params.updateValue("信达出行", forKey: "appname")
        params.updateValue("乌鲁木齐市信达", forKey: "company")
    NetworkKit().url("http://mobile.ximalaya.com/radio-station/v1/subscribe-channel/list").requestType(.get).success { (model) in
//        print(model.ret!)
        print(model.data)
        do {
            let encoder = JSONEncoder()
            let json = try! encoder.encode(model.data)
            let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
            let aa = try JSONDecoder().decode(TestModel.self, from: jsonData)

            let bb:channelResults = aa.list[0]!
            print(bb.bigCover!)
        } catch {
            print("error: \(error)")
        }
        
        }.request()
        
}
    
@IBAction func push(_ sender: UIButton) {
    
    }



}
