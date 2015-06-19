//
//  ViewController.swift
//  OneMoreRosterProject
//
//  Created by Marcus Thomas on 6/16/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  @IBOutlet weak var tableView: UITableView!
  
  var cellContent = ["Bob","Steve","Sue","Mike","Ralph","Buster","Jane","Gabi","Bella","Richard","Russel","George","Robin","Cal"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.dataSource = self
    
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return cellContent.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    //   var cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    cell.textLabel?.text = self.cellContent[indexPath.row]
    return cell
    
  }
  
  
//  override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) { if segue.identifier == "ShowPerson" {
//  var DetailViewController = segue.destinationViewControler as
//  DetailViewController
  }
  

  


