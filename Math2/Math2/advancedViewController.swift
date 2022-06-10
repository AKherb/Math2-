//
//  advancedViewController.swift
//  Math2
//
//  Created by Aryan Kashyap on 6/7/22.
//  Copyright © 2022 Aryan Kashyap. All rights reserved.
//

import UIKit
import Foundation


class advancedViewController: UIViewController {
    
    @IBOutlet var question: UILabel!
    @IBOutlet var answer1: UITextField!
    @IBOutlet var answer2: UITextField!
    @IBOutlet var streaker: UILabel!
    
    var streak = 0
    var A = 1
    var B = 1
    var C = 1
    var isreal = true
    
    @IBAction func skip() {
        newProblem()
    }
    
    @IBAction func restart() {
        streak = 0
        streaker.text = "0"
        //digits = 1
        newProblem()
    }
    
    @IBAction func check() {
        
        if(((B*B) - (4*A*C)) < 0)
        {
            streak = 0
            streaker.text = "0"
            
        }
        else
        {
            isreal = true
            let sq = sqrt(Double((B*B) - (4*A*C)))
            let myint1 = ((Double((-1*B)) + sq)/Double(2*A))
            let myint2 = ((Double((-1*B)) - sq)/Double(2*A))
            
            print(myint1)
            print(myint2)
            print(Double(answer2!.text!))
            print(Double(answer1!.text!))
            
            let a11 = Double(answer1!.text!)
            let a22 = Double(answer2!.text!)
            
            let a1 = round(a11 ?? 100)
            let a2 = round(a22 ?? -100)
            let mr1 = round(myint1)
            let mr2 = round(myint2)
            
            if(a1 == mr1 && a2 == mr2)
            {
                //print("YEHAWW")
                newProblem()
                streak = streak + 1
                streaker.text = "\(streak)"
                answer1.text = ""
                answer2.text = ""
                
                
            }
            else if(a2 == mr1 && a1 == mr2)
            {
                newProblem()
                streak = streak + 1
                streaker.text = "\(streak)"
                answer1.text = ""
                answer2.text = ""
            }
                
            else
            {
                streak = 0
                streaker.text = "0"
            }
        }
        
        
       
    }
    
    @IBAction func notreal()
    {
        if(((B*B) - (4*A*C)) < 0)
        {
            newProblem()
            streak = streak + 1
            streaker.text = "\(streak)"
            answer1.text = ""
            answer2.text = ""
            
        }
        else
        {
            streak = 0
            streaker.text = "0"
        }
    }
    
    
    func newProblem()
    {
        A = Int.random(in: -10..<10)
        B = Int.random(in: -10..<10)
        C = Int.random(in: -10..<10)
        
        while (A == 0)
        {
            A = Int.random(in: -10..<10)
        }
        
        question.text = "\(A)x^2 + \(B)x + \(C)"
        
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newProblem()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
}
