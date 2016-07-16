//
//  ViewController.swift
//  Tipster
//
//  Created by Mario Campaz on 7/14/16.
//  Copyright © 2016 Mario Campaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  // Global variables
  var bill:String = ""
  var isDecimalBill: Bool = false
  var decimalCount: Int = 0
  var charCount: Int = 0
  
  @IBOutlet weak var billLabel: UILabel!
  
  @IBOutlet weak var decimalPoint: UIButton!
  @IBOutlet weak var zeroButton: UIButton!
  @IBOutlet weak var oneButton: UIButton!
  @IBOutlet weak var twoButton: UIButton!
  @IBOutlet weak var threeButton: UIButton!
  @IBOutlet weak var fourButton: UIButton!
  @IBOutlet weak var fiveButton: UIButton!
  @IBOutlet weak var sixButton: UIButton!
  @IBOutlet weak var sevenButton: UIButton!
  @IBOutlet weak var eightButton: UIButton!
  @IBOutlet weak var nineButton: UIButton!
  
  
  @IBAction func numberKeyPressed(sender: UIButton) {
    let keyButtons = [decimalPoint,
                      zeroButton,
                      oneButton,
                      twoButton,
                      threeButton,
                      fourButton,
                      fiveButton,
                      sixButton,
                      sevenButton,
                      eightButton,
                      nineButton]
    charCount += 1
    
    if sender.currentTitle! == "." {
      isDecimalBill = true
    }
    if !isDecimalBill && charCount < 14{
      bill += String(sender.currentTitle!)
    }
    else if isDecimalBill && decimalCount <= 2 {
      decimalPoint.enabled = false
      bill += String(sender.currentTitle!)
      decimalCount += 1
    }
    else {
      for button in keyButtons{
        button.enabled = false
      }
    }
    
    
    print("the button text: \(bill)")
    updateUI()
    // sender.titleLabel?.text
    //billLabel.text += String(sender.tag)
  }
  // Clear button
  @IBAction func clearButton(sender: UIButton) {
    let keyButtons = [decimalPoint,
                      zeroButton,
                      oneButton,
                      twoButton,
                      threeButton,
                      fourButton,
                      fiveButton,
                      sixButton,
                      sevenButton,
                      eightButton,
                      nineButton]
    for button in keyButtons{
      button.enabled = true
      
    }
    bill = ""
    isDecimalBill = false
    decimalCount = 0
    charCount = 0
    updateUI()
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  // Update UI changes
  func updateUI(){
    billLabel.text = bill
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

