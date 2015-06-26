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
  
  var people = [Person]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //var fighterOne = Shedinja (startingName: "Shedinja")
      var personOne = Person(first: "Joe", last: "Blow")
      var personTwo = Person(first: "Steve", last: "Smith")
      var personThree = Person(first: "Bob", last: "Thomas")
      var personFour = Person(first: "George", last: "Smitty")
      var personFive = Person(first: "Kate", last: "Spacy")
    
    
    self.people.append(personOne)
    self.people.append(personTwo)
    self.people.append(personThree)
    self.people.append(personFour)
    self.people.append(personFive)
    
    self.tableView.dataSource = self
    
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return people.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    //var cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    let person = self.people[indexPath.row]
    cell.textLabel?.text = person.firstName + person.lastName
    return cell
    
  }
  
  
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
    
    if segue.identifier == "ShowPerson" {
    
    var detailViewController = segue.destinationViewController as! DetailViewController
    let indexPath = self.tableView.indexPathForSelectedRow()
    let person = self.people[indexPath!.row]
        detailViewController.selectedPerson = person
  
    }
  }
}
