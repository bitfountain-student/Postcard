//
//  ViewController.swift
//  Postcard
//
//  Created by bitfountain-student on 3/19/15.
//  Copyright (c) 2015 bitfountain-student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var messageLabel: UILabel!
  @IBOutlet weak var enterNameTextField: UITextField!
  @IBOutlet weak var enterMessageTextField: UITextField!
  @IBOutlet weak var mailButton: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func sendMailButonPressed(sender: UIButton) {
    messageLabel.text = enterMessageTextField.text
    messageLabel.hidden = false
    messageLabel.textColor = UIColor.redColor()
    
    enterMessageTextField.text = ""
    enterMessageTextField.resignFirstResponder()
    
    mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
  }

}

