//
//  ToDoViewController.swift
//  PracticeToDoList
//
//  Created by SGI-Mac7 on 06/01/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    override func viewDidLoad() {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TransferData.sharedInstance.arry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableViewCell
        let varForArryValue = TransferData.sharedInstance.arry[indexPath.row]
        cell?.TaskOutlet.text = varForArryValue.Task
        cell?.Time.text = varForArryValue.Time
        cell?.Expriy.text = varForArryValue.Expiry
        return cell!
    }
}

