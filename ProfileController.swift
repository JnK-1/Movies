//
//  ProfileCOntroller.swift
//  Test
//
//  Created by Jannik Thieme on 13.12.16.
//  Copyright © 2016 Jannik Thieme. All rights reserved.
//

import UIKit

class ProfileController: ViewController {
    
    //    -
    //    Definitons
    //    -
    
    @IBOutlet var outputName: UILabel!
    @IBOutlet var outputAge: UILabel!
    
    //    -
    //    functions
    //    -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputName.text = name
        outputAge.text = age
        
        print("Name: " + name)
        print("Age: " + age)
    }
    
}

