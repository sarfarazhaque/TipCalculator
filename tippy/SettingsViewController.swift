//
//  SettingsViewController.swift
//  tippy
//
//  Created by Md Sarfaraz Haque on 8/20/17.
//  Copyright © 2017 Sarfaraz. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet var DefaultTip1: UITextField!
    
    @IBOutlet var DefaultTip2: UITextField!
    
    @IBOutlet var DefaultTip3: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onSetTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func setDefault(_ sender: Any) {
        
        let defaulttip1 = Double(DefaultTip1.text!) ?? 0
        let defaults = UserDefaults.standard // Swift 3 syntax, previously NSUserDefaults.standardUserDefaults()
        defaults.set(defaulttip1, forKey: "default1")
        defaults.synchronize()
        
    }
    
    @IBAction func setDefault2(_ sender: Any) {
        
        
        let defaulttip2 = Double(DefaultTip2.text!) ?? 0
        let defaults = UserDefaults.standard // Swift 3 syntax, previously NSUserDefaults.standardUserDefaults()
        defaults.set(defaulttip2, forKey: "default2")
        defaults.synchronize()
    }
    
    
    @IBAction func setDefault3(_ sender: Any) {
        let defaulttip3 = Double(DefaultTip3.text!) ?? 0
        let defaults = UserDefaults.standard // Swift 3 syntax, previously NSUserDefaults.standardUserDefaults()
        defaults.set(defaulttip3, forKey: "default3")
        defaults.synchronize()
    }

}
