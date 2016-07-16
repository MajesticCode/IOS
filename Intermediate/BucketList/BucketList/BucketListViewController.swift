//
//  BucketListViewController.swift
//  BucketList
//
//  Created by Mario Campaz on 7/16/16.
//  Copyright © 2016 Mario Campaz. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController {

  var missions = ["Sky Diving", "Live in Hawaii"]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("MyCell")!
    
    cell.textLabel?.text = missions[indexPath.row]
    
    return cell
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return missions.count
  }

}

