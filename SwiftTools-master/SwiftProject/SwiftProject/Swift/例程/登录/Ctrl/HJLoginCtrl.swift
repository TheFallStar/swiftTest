//
//  HJLoginCtrl.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/12.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
//import CountdownLabel
//import GSCaptchaButton
class HJLoginCtrl: UIViewController {
    @IBOutlet weak var codeBtn: ui!
    @IBOutlet weak var tel: UITextField!
    @IBOutlet weak var code: UITextField!
    override func viewDidLoad(){
        super.viewDidLoad()
       codeBtn.maxSecond = 60 // 默认为60
    }
    
    @IBAction func getCode(_ sender: GSCaptchaButton) {
        if !tel.text!.isMobile{
            self.alert(msg: TelError, statue: 0)
            return
        }
        codeBtn.countdown = true
        if codeBtn.countdown {
            var params: [String:String] = [:]
            params.updateValue(tel.text!, forKey: "Mobile")
            NetWork(url: codeUrl, params: params)
        }
    }
    @IBAction func Login(_ sender: UIButton) {
        var params: [String:String] = [:]
        params.updateValue(tel.text!, forKey: "Mobile")
        params.updateValue(code.text!, forKey: "Code")
        params.updateValue(User_UUID!, forKey: "DeviceId")
        NetWork(url: loginUrl, params: params)
//        let vc=FlexTable()
//        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func NetWork(url:String,params:[String: Any]) -> Void {
        UserViewModel().url(url).params(params).success { (dict) in
            
            
        }.request()
    }
    
}
