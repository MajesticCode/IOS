//
//  ViewController.swift
//  NinjaGold
//
//  Created by Mario Campaz on 7/12/16.
//  Copyright © 2016 Mario Campaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  let wining = "You earn "
  let loosing = "You lost "
  var currentScore = 0
  
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var farmScore: UILabel!
  @IBOutlet weak var caveScore: UILabel!
  @IBOutlet weak var houseScore: UILabel!
  @IBOutlet weak var casinoScore: UILabel!
  
  // 
  @IBAction func farmButton(sender: UIButton) {
    let newScore = draw(10, sup: 20)
    let score = wining + String(newScore)
    farmScore.text = score
    currentScore += newScore
    updateUI(farmScore)
  }
  
  @IBAction func caveButton(sender: UIButton) {
    let newScore = draw(5, sup:10)
    let score = wining + String(newScore)
    caveScore.text = score
    currentScore += newScore
    updateUI(caveScore)
  }
  
  @IBAction func houseButton(sender: UIButton) {
    let newScore = draw(2, sup:5)
    let score = wining + String(newScore)
    houseScore.text = score
    currentScore += newScore
    updateUI(houseScore)
  }
  
  @IBAction func casinoButton(sender: UIButton) {
    var score = ""
    var newScore = draw(0, sup:50)
    let sign = draw(0, sup:2)
    if sign == 0 {
      score = wining + String(newScore)
    }
    else {
      newScore *= -1
      score = loosing + String(newScore)
    }
    
    casinoScore.text = score
    currentScore += newScore
    updateUI(casinoScore)
  }
  
  @IBAction func resetButton(sender: UIButton) {
    reset()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    reset()
  }

  func reset(){
    // initialize the UI elements
    scoreLabel.text = "0"
    farmScore.hidden = true
    caveScore.hidden = true
    houseScore.hidden = true
    casinoScore.hidden = true
  }
  
  // clear all the labels from previous moves
  func resetScore(){
    // initialize the UI elements
    farmScore.hidden = true
    caveScore.hidden = true
    houseScore.hidden = true
    casinoScore.hidden = true
  }
  
  // generate a random number with inside a range
  func draw(inf: Int, sup: Int) -> Int {
    let result = inf + Int(arc4random_uniform(UInt32(sup) - UInt32(inf)))
    return result
  }
  
  func updateUI(scoreToShow: UILabel){
    resetScore()
    scoreToShow.hidden = false
    scoreLabel.text = String(currentScore)
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

