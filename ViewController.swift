//
//  ViewController.swift
//  Test
//
//  Created by Jannik Thieme on 13.12.16.
//  Copyright © 2016 Jannik Thieme. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
    
//    -
//    Definitons
//    -
    
    @IBOutlet var inputName: UITextField!
    @IBOutlet var inputAge: UITextField!
    
    
    public var name = ""
    public var age = ""
    public var logon = 0
    
//    -
//    Buttons
//    -
    
    @IBAction func Logon(_ sender: Any) {
        name = inputName.text!;
        age = inputAge.text!;
        logon += 1;
        
        print("Name: " + name)
        print("Age: " + age)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDataSegue"
        {
            if let destinationVC = segue.destination as? ProfileController {
                destinationVC.name = name
                destinationVC.age = age
            }
        }
    }
    

    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

