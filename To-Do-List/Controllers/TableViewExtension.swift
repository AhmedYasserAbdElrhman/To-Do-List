//
//  TableViewExtension.swift
//  To-Do-List
//
//  Created by Ahmed Yasser on 8/1/19.
//  Copyright © 2019 Ahmed Yasser. All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UITabBarDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let taskNumber = todos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TheDoTableCell") as! ToDoCell
        cell.setCell(cell: taskNumber)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else {return}
        let taskNumber = todos[indexPath.row]
        RealmServices.shared.deleteDB(value: taskNumber)
        tableView.deleteRows(at: [indexPath], with: .automatic)
        
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.performSegue(withIdentifier: "updateSegue", sender: self)
//    }
    
}

