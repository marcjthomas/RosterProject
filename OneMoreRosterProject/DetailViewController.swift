//
//  DetailViewController.swift
//  OneMoreRosterProject
//
//  Created by Marcus Thomas on 6/16/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//
import UIKit


class DetailViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  
  @IBOutlet weak var DogFace: UIImageView!
 
  

  
  var selectedPerson : Person!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.firstNameTextField.delegate = self
    self.lastNameTextField.delegate = self
    self.firstNameTextField.tag = 0
    self.lastNameTextField.tag = 1
    
    
    self.firstNameTextField.text = self.selectedPerson.firstName
    self.lastNameTextField.text = self.selectedPerson.lastName
  
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    
    textField.resignFirstResponder()
    return false
  }
  
  func textFieldDidEndEditing(textField: UITextField) {
    if textField.tag == 0 {
      //set the first name
      self.selectedPerson.firstName =  textField.text
    }
    else {
      //set the last name
      self.selectedPerson.lastName = textField.text
    }
    
    //below
//    
//    func didReceiveMemoryWarning() {
//      super.didReceiveMemoryWarning()
//      // Dispose of any resources that can be recreated.
//    }
//    
//    func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
//      self.view.endEditing(true)
//    }
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//      
//      textField.resignFirstResponder()
//      return true
//    }
    
   //above
    
    
    
  }
}
