//
//  ToDoCell.swift
//  To-Do-List
//
//  Created by Ahmed Yasser on 7/31/19.
//  Copyright © 2019 Ahmed Yasser. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {
    @IBOutlet private weak var titleLabel:UILabel!
    @IBOutlet private weak var statusLabel:UILabel!
    
    func setCell(cell:ToDo){
        self.titleLabel.text = cell.todoText
        self.statusLabel.text = cell.isDone ? "Done" : "Do it"
    }

}
