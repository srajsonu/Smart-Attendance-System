//
//  SignInViewController.swift
//  Smart Attendance System
//
//  Created by ARY@N on 24/02/20.
//  Copyright © 2020 Hitachi Payment Services. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var SignInButton: UIButton!
    @IBOutlet weak var SignUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SignInButton.layer.cornerRadius=8
        SignUpButton.layer.cornerRadius=8
    }
    
    @IBAction func SignInButtonTapped(_ sender: UIButton) {
        if usernameTextField.text == "admin" && passwordTextField.text == "admin" {
            performSegue(withIdentifier: "HomeVC", sender: self)
        }
    }
    @IBAction func SignUpButtonTapped(_ sender: UIButton) {
    }
}
