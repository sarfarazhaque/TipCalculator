//
//  ViewController.swift
//  tippy
//
//  Created by Md Sarfaraz Haque on 8/16/17.
//  Copyright © 2017 Sarfaraz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        billField.becomeFirstResponder()
        let defaults = UserDefaults.standard
        let doubleValue1 = defaults.double(forKey: "default1")
        let doubleValue2 = defaults.double(forKey: "default2")
        let doubleValue3 = defaults.double(forKey: "default3")
        print(doubleValue1, doubleValue2, doubleValue3)
        let string1 = String(doubleValue1)
        let string2 = String(doubleValue2)
        let string3 = String(doubleValue3)
        let string11 = string1 + "%"
        let string22 = string2 + "%"
        let string33 = string3 + "%"
        
        print(string11, string22, string33)
        tipControl.setTitle(string11, forSegmentAt: 0)
        tipControl.setTitle(string22, forSegmentAt: 1)
        tipControl.setTitle(string33, forSegmentAt: 2)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
        
    }
    

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    

    @IBAction func CalculateTip(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        let doubleValue1 = defaults.double(forKey: "default1")
        let doubleValue2 = defaults.double(forKey: "default2")
        let doubleValue3 = defaults.double(forKey: "default3")
        
        let newPercentages = [doubleValue1/100,doubleValue2/100,doubleValue3/100]

        
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * newPercentages[tipControl.selectedSegmentIndex]
        
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    
    
    
}

