//
//  CircleViewController.swift
//  Math2
//
//  Created by Aryan Kashyap on 6/9/22.
//  Copyright © 2022 Aryan Kashyap. All rights reserved.
//

import Foundation
import UIKit



class CircleViewController: UIViewController {
    
    @IBOutlet var Av: UITextField!
    @IBOutlet var Rv: UITextField!
    @IBOutlet var CIRv: UITextField!
    @IBOutlet var answer: UILabel!
    
    @IBAction func getR()
    {
        if(Av.text != "")
        {
            let A = Double(Av!.text!) ?? 1
            var r = sqrt(A/3.1415926)
            r = round(r*1000)/1000
            
            answer.text = "Radius = \(r)"
        }
        else if(CIRv.text != "")
        {
            let CIR = Double(CIRv!.text!) ?? 1
            var r = CIR/(2*3.1415926)
            r = round(r*1000)/1000
            
            answer.text = "Radius = \(r)"
        }
        else
        {
            answer.text = "Error, insufficant information"
        }
    }
    @IBAction func getCIR()
    {
        if(Rv.text != "")
        {
            let r = Double(Rv!.text!) ?? 1
            var CIR = 2*3.1415926*r
            CIR = round(CIR*1000)/1000
            
            answer.text = "CIR = \(CIR)"
        }
        else if(Av.text != "")
        {
            let A = Double(Av!.text!) ?? 1
            var r = sqrt(A/3.1415926)
            var CIR = 2*3.1415926*r
            CIR = round(CIR*1000)/1000
            
            answer.text = "CIR = \(CIR)"
        }
        else
        {
            answer.text = "Error, insufficant information"
        }
    }
    
    @IBAction func getA()
    {
        if(Rv.text != "")
        {
            let r = Double(Rv!.text!) ?? 1
            var A = r*3.1415926*r
            A = round(A*1000)/1000
            
            answer.text = "Area = \(A)"
        }
        else if(CIRv.text != "")
        {
            let CIR = Double(CIRv!.text!) ?? 1
            var r = CIR/(2*3.1415926)
            var A = r*3.1415926*r
            A = round(A*1000)/1000
            
            
            answer.text = "Area = \(A)"
        }
        else
        {
            answer.text = "Error, insufficant information"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
