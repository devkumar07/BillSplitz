//
//  ViewController.swift
//  BillSplitz
//
//  Created by Devanshu Kumar on 6/29/20.
//  Copyright © 2020 Devanshu Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var amt: UITextField!
    @IBOutlet weak var peopleCount: UILabel!
    @IBOutlet weak var tipDisplay: UILabel!
    @IBOutlet weak var tenPercent: UIButton!
    @IBOutlet weak var fifteenPercent: UIButton!
    @IBOutlet weak var twentyFivePercent: UIButton!
    
    var tipPercent = 0.0
    var finalAmt = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amt.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        amt.endEditing(true)
    }

    @IBAction func tipButton(_ sender: AnyObject) {
        
        if sender.tag == 1{
            tipPercent = 0.10
            tipDisplay.text = "Tip: 10%"
            tenPercent.backgroundColor = UIColor.white
        }
        else if sender.tag == 2{
            tipPercent = 0.15
            tipDisplay.text = "Tip: 15%"
            fifteenPercent.backgroundColor = UIColor.white
        }
        else{
            tipPercent = 0.25
            tipDisplay.text = "Tip: 25%"
            twentyFivePercent.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func peopleStepper(_ sender: UIStepper) {
        peopleCount.text = String(sender.value)
    }
    
    
    @IBAction func calculate(_ sender: AnyObject) {
        
        let x = (Double(amt.text!)! * (1+tipPercent))/Double(peopleCount.text!)!
        
        
        finalAmt = String(format: "%.2f",x)
        
        if finalAmt != ""{
            performSegue(withIdentifier: "resultView", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! resultPage
        secondController.result = finalAmt
    }
    
}

