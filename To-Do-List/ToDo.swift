//
//  ToDo.swift
//  To-Do-List
//
//  Created by Ahmed Yasser on 7/31/19.
//  Copyright © 2019 Ahmed Yasser. All rights reserved.
//

import Foundation
import RealmSwift

class ToDo : Object {
    @objc  dynamic var todoText = ""
    @objc  dynamic var isDone = false
    
}
