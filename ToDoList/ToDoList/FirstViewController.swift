//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Dustin Trinh on 2018-11-25.
//  Copyright © 2018 DustyTheCutie. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var items:[String] = []
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
       
    }
    
    @IBOutlet weak var tableDisplay: UITableView!
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let itemObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemObject as? [String] {
            items = tempItems as! [String]
        }
        
        tableDisplay.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete{
            items.remove(at: indexPath.row)
            
            tableDisplay.reloadData()
            
            UserDefaults.standard.set(items, forKey: "items")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
        
        
    }


}

