//
//  FlexTableCell.swift
//  QLDesignatedDriving
//
//  Created by Steven on 2019/2/15.
//  Copyright © 2019 csql. All rights reserved.
//

import Foundation
class FlexTableCell: UITableViewCell {
    @IBOutlet weak var name1: UILabel!
    
    @IBOutlet weak var name2: UILabel!
    
    
    static func modelCellWithTableView(tableView: UITableView) -> UITableViewCell {
        let cellIdentifier : String = "cell"
        
        tableView.register(UINib(nibName: "FlexTableCellView", bundle:nil), forCellReuseIdentifier: cellIdentifier)
        
        let cell : FlexTableCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! FlexTableCell
//        tableView.de
        return cell
    }
}
