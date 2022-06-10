//
//  QuadCalcViewController.swift
//  Math2
//
//  Created by Aryan Kashyap on 6/7/22.
//  Copyright © 2022 Aryan Kashyap. All rights reserved.
//

import Foundation
import UIKit



class QuadCalcViewController: UIViewController {
    
    @IBOutlet var question: UILabel!
    @IBOutlet var Av: UITextField!
    @IBOutlet var Bv: UITextField!
    @IBOutlet var Cv: UITextField!
    @IBOutlet var answer: UILabel!

    @IBAction func getA()
    {
        let A = Double(Av!.text!) ?? 1
        let B = Double(Bv!.text!) ?? 1
        let C = Double(Cv!.text!) ?? 1
        
        question.text = "\(A)x^2 + \(B)x + \(C)"
        
        if(((B*B) - (4*A*C)) < 0)
        {
            answer.text = "Imaginary"
            
        }
        else
        {
            
            let sq = sqrt(Double((B*B) - (4*A*C)))
            let myint1 = round((((Double((-1*B)) + sq)/Double(2*A)) * 100))/100
            let myint2 = round((((Double((-1*B)) - sq)/Double(2*A)) * 100))/100
            
            answer.text = "x = {\(myint1), \(myint2)}"
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
