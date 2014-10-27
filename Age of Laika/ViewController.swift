//
//  ViewController.swift
//  Age of Laika
//
//  Created by Kunwardeep Gill on 2014-10-27.
//  Copyright (c) 2014 ProjectDGW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertedAgeLabel: UILabel!
    @IBOutlet weak var ageOfHumanTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertYearsButtonPressed(sender: UIButton) {
        let yearsFromTextField = Double((ageOfHumanTextField.text as NSString).doubleValue)
        let conversionConstant = 7.0
        ageOfHumanTextField.resignFirstResponder()
        convertedAgeLabel.hidden = false
        convertedAgeLabel.text = "\(yearsFromTextField * conversionConstant)" + " In Dog Years"
        
    }

}

