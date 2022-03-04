//
//  ViewController.swift
//  final grade calculator
//
//  Created by Carlos Mugica on 3/2/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var input2: UITextField!
    
    @IBOutlet weak var input3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        
        var currentgrade = input1.text ?? ""
        var desiredgrade = input2.text ?? ""
        var finalgrade = input3.text ?? ""
        
        var c = Double(currentgrade) ?? 0.0
        var d = Double(desiredgrade) ?? 1.1
        var f = Double(finalgrade) ?? 2.2
        
    var decimalweight = f/100
        
        var difference = 1 - decimalweight
        var valueofassignments = difference * c
        var difference2 = d - valueofassignments
        var nearfinal = difference2 / f
        
        var finalballs = nearfinal * 100
        
        
    label1.text = "you need to score " + "\(finalballs)" + "% on the final exam"
        
        
        
        
        
    }
    
    @IBOutlet weak var label1: UILabel!
  
    

}

