//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Dustin Trinh on 2018-11-25.
//  Copyright © 2018 DustyTheCutie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var itemTextField: UITextField!
    @IBAction func addItemButton(_ sender: Any) {
        
        let itemObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let tempItems = itemObject as? [String] {
            items = tempItems
            items.append(itemTextField.text!)
        }
        else{
             items = [itemTextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
        self.view.endEditing(true)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }


}

