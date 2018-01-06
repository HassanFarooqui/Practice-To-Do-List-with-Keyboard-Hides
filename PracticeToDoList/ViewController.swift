//
//  ViewController.swift
//  PracticeToDoList
//
//  Created by SGI-Mac7 on 06/01/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    
    
    @IBOutlet weak var TbxTask: UITextField!
    
    
    @IBOutlet weak var TbxTime: UITextField!
    
    
    @IBOutlet weak var TbxExpiry: UITextField!
    
    
    @IBAction func Save_Button_Click(_ sender: AnyObject)
    {
        	let Task = TbxTask.text
            let Time = TbxTime.text
            let Expiry = TbxExpiry.text
        
        let Student:TransferData = TransferData(Task: Task!, Time: Time!, Expiry: Expiry!)
        TransferData.sharedInstance.arry.append(Student)
        //Student.arry.append(Student)
        self.performSegue(withIdentifier: "PageTransfer", sender: self)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.TbxTask.delegate = self
        self.TbxTime.delegate = self
        self.TbxExpiry.delegate = self
    }
    //Hide Keyboard when user touch outside the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    //Hide Keyboard Key when presses Return Key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    
  
}
class TransferData
{
    static var sharedInstance = TransferData()
    
    var Task:String = ""
    var Time:String = ""
    var Expiry = ""
    
    init()
    {
    }
    
    init(Task:String, Time:String, Expiry:String)
    {
        self.Task = Task
        self.Time = Time
        self.Expiry = Expiry
    }
    
    var arry:[TransferData] = []
}



