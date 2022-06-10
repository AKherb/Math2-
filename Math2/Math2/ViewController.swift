//
//  ViewController.swift
//  Math2
//
//  Created by Aryan Kashyap on 12/27/21.
//  Copyright © 2021 Aryan Kashyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var val1 = 2
    var val2 = 2
    var streak = 0
    var digits = 1
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var answer: UITextField!
    @IBOutlet var sva: UILabel!
    
    @IBAction func skip() {
        newProblem()
    }
    
    @IBAction func restart() {
        streak = 0
        sva.text = "0"
        digits = 1
        newProblem()
    }
    
    @IBAction func b1() {
        digits = 1
        newProblem()
    }
    
    @IBAction func b2() {
        digits = 2
        newProblem()
    }
    
    @IBAction func b3() {
        digits = 3
        newProblem()
    }
    
    @IBAction func advanced() {
        
    }
    
    @IBAction func check() {
        let myint = Int(val1+val2) ?? 0
        if((Int(answer.text!) ?? 0) == myint)
        {
            //print("YEHAWW")
            newProblem()
            streak = streak + 1
            sva.text = "\(streak)"
            answer.text = ""
            
            
        }
        else
        {
            streak = 0
            sva.text = "0"
        }
    }
    func newProblem() {
        if(digits == 2)
        {
            val1 = Int.random(in: 1..<100)
            val2 = Int.random(in: 1..<100)
        }
        else if(digits == 1)
        {
            val1 = Int.random(in: 1..<10)
            val2 = Int.random(in: 1..<10)
        }
        else if(digits == 3)
        {
            val1 = Int.random(in: 1..<1000)
            val2 = Int.random(in: 1..<1000)
        }
        label1.text = "\(val1)"
        label2.text = "\(val2)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newProblem()
        sva.text = "0"
        
        
    }


}

