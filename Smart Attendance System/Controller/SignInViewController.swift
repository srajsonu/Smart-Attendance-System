//
//  SignInViewController.swift
//  Smart Attendance System
//
//  Created by ARY@N on 24/02/20.
//  Copyright © 2020 Hitachi Payment Services. All rights reserved.
//

import UIKit
import ProgressHUD

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        usernameTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .go
        usernameTextField.tag = 0
        passwordTextField.tag = 1
        SignInButton.layer.cornerRadius = 8
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            return true;
        }
        return false
    }
    
    @IBAction func SignInButtonTapped(_ sender: UIButton) {
        guard let enteredUserName = usernameTextField.text , !enteredUserName.isEmpty else {
            ProgressHUD.showError("Enter Usename")
            return
        }
        guard let enteredPassword = passwordTextField.text , !enteredPassword.isEmpty else {
            ProgressHUD.showError("Enter Password")
            return
        }
        passwordTextField.resignFirstResponder()
        if usernameTextField.text == "admin" && passwordTextField.text == "password" {
            performSegue(withIdentifier: "HomeVC", sender: self)
        }
    }
    @IBAction func SignUpButtonTapped(_ sender: UIButton) {
    }
}
