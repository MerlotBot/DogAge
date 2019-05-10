//
//  ViewController.swift
//  DogAge
//
//  Created by Antonakakis Nikolaos on 10.05.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogAgeTextField: UITextField!
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        if dogAgeTextField.text != "" {
        let dogAge = Int(dogAgeTextField.text!)!
            humanAgeLabel.text = "In human years: \(calculateHumanAge(dogAge: dogAge))"
        } else {
            humanAgeLabel.text = "Please input dog age!"
        }
    }
    
    
    func calculateHumanAge(dogAge: Int) -> Int {
        
        var humanAge: Int = 0
        
        if dogAge == 0 {
            
        } else if dogAge == 1 {
            humanAge = 15
        } else if dogAge == 2 {
            humanAge = 24
        } else {
            humanAge = ((dogAge - 2) * 4) + 24
        }
        
        return humanAge
    }
}

