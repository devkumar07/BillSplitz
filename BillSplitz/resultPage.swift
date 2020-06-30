//
//  resultPage.swift
//  BillSplitz
//
//  Created by Devanshu Kumar on 6/29/20.
//  Copyright © 2020 Devanshu Kumar. All rights reserved.
//

import UIKit

class resultPage: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Each person pays $"+result
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
