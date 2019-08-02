//
//  RealmServices.swift
//  To-Do-List
//
//  Created by Ahmed Yasser on 8/1/19.
//  Copyright © 2019 Ahmed Yasser. All rights reserved.
//

import Foundation
import RealmSwift

class RealmServices {
    private init() {}
    static let shared = RealmServices()
    
    var realm = try! Realm()
    
    func addDB(task: (String,Bool)){
        try! realm.write {
            let todoTask = ToDo()
            todoTask.todoText = task.0
            todoTask.isDone = task.1
            realm.add(todoTask)
        }
    }
    
    func deleteDB(value: Object){
        try! realm.write {
            realm.delete(value)
        }
    }
    
    func updateDB(value: Object,list:ToDo){
        try! realm.write {
            value.setValue(list.todoText, forKeyPath: "todoText")
            value.setValue(list.isDone, forKeyPath: "isDone")
        }
        
    }

}
