//
//  ViewController.swift
//  Postcard
//
//  Created by Erik Parra on 1/16/15.
//  Copyright (c) 2015 Erik Parra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
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

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Comment add to test commit
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.greenColor()
        
        enterNameTextField.text = ""
        enterMessageTextField.text = ""

        enterMessageTextField.resignFirstResponder() //make keyboard go away
        
        //using IBOutlet for button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        //sender.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    

}

