//
//  ViewController.swift
//  TipCalc2
//
//  Created by Natalie Goldstein on 12/22/15.
//  Copyright © 2015 Natalie Goldstein. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var tipLabel: UILabel!
   
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var perPerson: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
   
    @IBOutlet weak var pickerWV: UIPickerView!
    var people = ["1", "2", "3", "4", "5", "6", "7"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return people.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return people[row]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        perPerson.text = "$0.00"
        self.title = "Tip Calculator"

        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15, 0.18, 0.2, 0.22]
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        
       
        
        var tip = billAmount * tipPercentage
    
        var total = billAmount + tip
        
        var pickerVal2 = people[pickerWV.selectedRowInComponent(0)]
        
        //Right now if you change the pickerwheel value, the total will not be divided unless the tip percentage area is changed. I tried to fix this a few different ways but was unsuccesful. 
        
        var pickerVal3 = Double(pickerVal2)
       
        var splitTotal = total / pickerVal3!
       
  
    
        
        
        
        tipLabel.text = "$\(tip)"
        
        totalLabel.text = "$\(total)"
        
        perPerson.text = "$\(splitTotal)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPerson.text = String(format: "$%.2f", splitTotal)
        
        }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }

    }

