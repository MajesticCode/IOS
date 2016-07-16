//
//  ViewController.swift
//  BeastList
//
//  Created by Mario Campaz on 7/16/16.
//  Copyright © 2016 Mario Campaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
                      UITableViewDataSource,
                      UITableViewDelegate{
  var tasks = ["Exercise for 30 minutes", "Pay bill", "Call the doctor", "Visit the museum"]
  
  @IBOutlet weak var insertTaskField: UITextField!
  @IBOutlet weak var tableView: UITableView!
  
  @IBAction func insertButtonPressed(sender: UIButton) {
    if !insertTaskField.text!.isEmpty {
      tasks.append(insertTaskField.text!)
      print(insertTaskField.text!)
      insertTaskField.text?.removeAll()
      tableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    tableView.delegate = self
  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tasks.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("MyCell")!
    
    cell.textLabel?.text = tasks[indexPath.row]
    
    return cell
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    print("Section: \(indexPath.section) and Row: \(indexPath.row)")
    tasks.removeAtIndex(indexPath.row)
    tableView.reloadData()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

