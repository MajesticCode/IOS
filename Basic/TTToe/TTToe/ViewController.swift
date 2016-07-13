//
//  ViewController.swift
//  TTToe
//
//  Created by Mario Campaz on 7/12/16.
//  Copyright © 2016 Mario Campaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  // turn true for red, false for blue
  var turn: Bool = true
  // moves max = 9; a draw if thre is no winner
  var movesCount:Int = 0
  var isAWinner: Bool = false
  
  @IBOutlet weak var button1: UIButton!
  @IBOutlet weak var button2: UIButton!
  @IBOutlet weak var button3: UIButton!
  @IBOutlet weak var button4: UIButton!
  @IBOutlet weak var button5: UIButton!
  @IBOutlet weak var button6: UIButton!
  @IBOutlet weak var button7: UIButton!
  @IBOutlet weak var button8: UIButton!
  @IBOutlet weak var button9: UIButton!
  
  @IBOutlet weak var resultLabel: UILabel!

  
  @IBAction func resetButton(sender: UIButton) {
    reset()
  }
  @IBAction func buttonPressed(sender: UIButton) {
    if turn {
      sender.backgroundColor = UIColor.redColor()
      turn = false
    }
    else{
      sender.backgroundColor = UIColor.blueColor()
      turn = true
    }
    sender.enabled = false
    movesCount += 1
    checkWinner()
  }
  
  // checks if ther is a winner
  func checkWinner(){
    
    if button1.backgroundColor === button2.backgroundColor &&
        button2.backgroundColor === button3.backgroundColor
        && button1.backgroundColor !== UIColor.darkGrayColor() {
      isAWinner = true
      
    }
    else if button4.backgroundColor === button5.backgroundColor &&
            button5.backgroundColor === button6.backgroundColor
            && button4.backgroundColor !== UIColor.darkGrayColor() {
      isAWinner = true
    }
    else if button7.backgroundColor === button8.backgroundColor &&
            button8.backgroundColor === button9.backgroundColor
            && button7.backgroundColor !== UIColor.darkGrayColor(){
      isAWinner = true
    }
    else if button1.backgroundColor === button4.backgroundColor &&
            button4.backgroundColor === button7.backgroundColor
            && button1.backgroundColor !== UIColor.darkGrayColor() {
      isAWinner = true
    }
    else if button2.backgroundColor === button5.backgroundColor &&
            button5.backgroundColor === button8.backgroundColor
            && button2.backgroundColor !== UIColor.darkGrayColor() {
      isAWinner = true
    }
    else if button3.backgroundColor === button6.backgroundColor &&
            button6.backgroundColor === button9.backgroundColor
            && button3.backgroundColor !== UIColor.darkGrayColor() {
      isAWinner = true
    }
    else if button1.backgroundColor === button5.backgroundColor &&
            button5.backgroundColor === button9.backgroundColor
            && button1.backgroundColor !== UIColor.darkGrayColor() {
      isAWinner = true
    }
    else if button3.backgroundColor === button5.backgroundColor &&
            button5.backgroundColor === button7.backgroundColor
            && button3.backgroundColor !== UIColor.darkGrayColor() {
      isAWinner = true
    }
    else if movesCount == 9 {
      resultLabel.text = "No winner, It is a Draw!"
      resultLabel.hidden = false
    }
    if isAWinner {
      if turn {
        resultLabel.text = "Congrats Blue Won!"
      }
      else{
        resultLabel.text = "Congrats Red Won!"
      }
      resultLabel.hidden = false
      let buttons = [button1, button2, button3, button4,
                     button5, button6, button7, button8, button9]
      for button in buttons {
        button.enabled = false
      }
    }
  }
  
  // Reset the game
  func reset(){
    let buttons = [button1, button2, button3, button4,
                   button5, button6, button7, button8, button9]
    for button in buttons {
      button.backgroundColor = UIColor.darkGrayColor()
      button.enabled = true
    }
    turn = true
    isAWinner = false
    movesCount = 0
    resultLabel.hidden = true
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    resultLabel.hidden = true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

