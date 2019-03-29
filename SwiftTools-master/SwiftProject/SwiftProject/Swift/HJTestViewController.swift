//
//  HJTestViewController.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/1/30.
//  Copyright © 2019 csql. All rights reserved.
//

import UIKit
class HJTestViewController: UIViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        var params: [String:String] = [:]
        params.updateValue("乌鲁木齐市信达", forKey: "city")
        params.updateValue("信达出行", forKey: "appname")
        params.updateValue("乌鲁木齐市信达", forKey: "company")
//        NetworkKit().url("http://adminv3.chuangshiqilin.com/androidcustomers/get_branchs_phone").params(params).requestType(.get).success { (json) in
//            let aa = HttpModel.deserialize(from: json)
//            print(aa!.result!)
//    }.request()
        NetworkKit().url("http://ceshi.chuangshiqilin.com/customersv1/get_slides").params(params).success { (dict) in
//            let aa = HttpModel.deserialize(from: json)
            print(dict)
        }.request()
        
}
    
@IBAction func push(_ sender: UIButton) {
    
    }



}
