//
//  ViewController.swift
//  ColdCall
//
//  Created by Mario Campaz on 7/12/16.
//  Copyright © 2016 Mario Campaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let names: [(String, UIColor)] = [("Pedro", UIColor.magentaColor()),
                                      ("Pablo", UIColor.greenColor()),
                                      ("Maria", UIColor.redColor()),
                                      ("Walter", UIColor.blueColor()),
                                      ("Felix", UIColor.grayColor()),
                                      ("Beatriz", UIColor.brownColor()),
                                      ("Alvaro", UIColor.redColor()),
                                      ("Evert", UIColor.yellowColor()),
                                      ("Ofelia", UIColor.magentaColor()),
                                      ("Carlos", UIColor.greenColor())]
  var currentNumber: Int = 0
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var numberLabel: UILabel!
  
  @IBAction func coldCall(sender: UIButton) {
    currentNumber = Int(arc4random_uniform(10))
    updateUI()
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    nameLabel.text = "Ready?"
    numberLabel.hidden = true
  }
  
  func updateUI(){
    // set nameLabel's text to a start name
    nameLabel.text = names[currentNumber].0
    numberLabel.textColor = names[currentNumber].1
    numberLabel.text = String(currentNumber + 1)
    numberLabel.hidden = false
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

