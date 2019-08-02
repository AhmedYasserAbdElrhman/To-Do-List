//
//  ViewController.swift
//  To-Do-List
//
//  Created by Ahmed Yasser on 7/31/19.
//  Copyright © 2019 Ahmed Yasser. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var todoTableView: UITableView!
   
    var todos : Results<ToDo>!
    
    override func viewWillAppear(_ animated: Bool) {
        let realm = RealmServices.shared.realm
        todos = realm.objects(ToDo.self)
        self.todoTableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)

    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "updateSegue"){
            guard let destination = segue.destination as? InsertViewController else {return}
            let sentData = todos[(todoTableView.indexPathForSelectedRow?.row)!]
            destination.recievedData.1 = sentData.isDone
            destination.recievedData.0 = sentData.todoText
        }
    }
    
    

    @IBAction func backButton(_ sender: UIStoryboardSegue){
        guard let insertVC = sender.source as? InsertViewController else {return}
    }
    
    @IBAction func saveButton(_ sender: UIStoryboardSegue){
        guard let insertVC = sender.source as? InsertViewController else {return}
        if insertVC.recievedData.0 != "" {
            let goodToDo = ToDo()
            goodToDo.isDone = insertVC.taskSwitch.isOn
            goodToDo.todoText = insertVC.taskTextField.text!
            let value = todos[(todoTableView.indexPathForSelectedRow?.row)!]
            RealmServices.shared.updateDB(value: value, list: goodToDo)
        }else{
        if case let insertVC.taskTextField.text = insertVC.taskTextField.text {
            let todo:(String,Bool)
            todo.0 = insertVC.taskTextField.text!
            todo.1 = insertVC.taskSwitch.isOn
            RealmServices.shared.addDB(task: todo)
        }
        
    }
    
  }

}


