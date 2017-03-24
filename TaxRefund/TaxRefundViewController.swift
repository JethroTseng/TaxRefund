//
//  TaxRefundViewController.swift
//  TaxRefund
//
//  Created by citywan on 2017/3/23.
//  Copyright © 2017年 citywan. All rights reserved.
//

import UIKit

class TaxRefundViewController: UIViewController {
    
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var percentage: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func calculate(_ sender: UIButton) {
        if amount.text == "" || percentage.text == ""{
            result.text = "0"
        }
        else{ let Tax = Double(amount.text!)! * Double(percentage.text!)! / 100
            result.text=String(Tax)
        }
    }
    
    @IBAction func clean(_ sender: Any) {
        amount.text = ""
        percentage.text = ""
        result.text = "0"
    }
    
    

//    @IBAction func calculate(_ sender: UIButton) {
//        let Taxamount = Double(amount.text!)
//        let Taxpercentage = Double(percentage.text!)
//        let finaltax = Double(Taxamount! * Taxpercentage!/100)
//        result.text = String(finaltax)
//    }
    
    
    
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

}
