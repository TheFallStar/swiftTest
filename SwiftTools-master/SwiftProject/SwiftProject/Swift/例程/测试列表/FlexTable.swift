//
//  FlexTable.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/15.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
class FlexTable: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:FlexTableCell=FlexTableCell.modelCellWithTableView(tableView: tableView) as! FlexTableCell
        cell.name1.text="asdasdasdaasdasdasdassdasdsadasdasdasdasdasd"
        cell.name2.text="aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa1"
        return cell
    }
    
    lazy var table:UITableView = {
        let table = UITableView.init(frame: self.view.frame)
        table.delegate = self
        table.dataSource = self
        table.backgroundColor = UIColor.white
        table.estimatedRowHeight=100
        table.rowHeight = UITableViewAutomaticDimension
        table.tableFooterView = UIView.init()
        table.separatorStyle=UITableViewCell.SeparatorStyle.none
        table.addRefreshHeaderWithScrollView {
            print("1")
            table.endRefreshWithTableView()
        }
        table.addRefreshFooterWithScrollView {
            print("2")
            table.endRefreshWithTableView()
        }
        return table
    }()
    override func viewDidLoad() {
        self.view.backgroundColor=UIColor.red
        self.view.addSubview(self.table)
        var params: [String:String] = [:]
        params.updateValue("30", forKey: "Version")
        params.updateValue("2", forKey: "Platform")

//        NetWork(url:Url_Driver_Version, params: params)
    }
//    func NetWork(url:String,params:[String: Any]) -> Void {
//        UserViewModel().url(url).params(params).success { (dict) in
//            
//            }.request()
//    }
}
