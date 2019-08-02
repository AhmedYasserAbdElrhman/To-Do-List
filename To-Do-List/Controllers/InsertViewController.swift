//
//  InsertViewController.swift
//  To-Do-List
//
//  Created by Ahmed Yasser on 8/1/19.
//  Copyright © 2019 Ahmed Yasser. All rights reserved.
//

import UIKit

class InsertViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var taskSwitch: UISwitch!
    
    var recievedData : (String,Bool) = ("",false)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTextField.text = recievedData.0
        taskSwitch.isOn = recievedData.1 
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
