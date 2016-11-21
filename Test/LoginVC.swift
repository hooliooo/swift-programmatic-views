//
//  ViewController.swift
//  Test
//
//  Created by Julio Alorro on 11/21/16.
//  Copyright © 2016 Incubix Technologies, Inc. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    override func loadView() {
        self.view = LoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginButton.addTarget(self, action: #selector(loginButtonPressed), for: UIControlEvents.touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - IBOutlets
    weak var loginView: LoginView! { return self.view as! LoginView }
    weak var emailTextField: UITextField! { return loginView.emailTextField }
    weak var passwordTextField: UITextField! { return loginView.passwordTextField }
    weak var loginButton: UIButton! { return loginView.loginButton }
    
    // MARK: - IBActions
    func loginButtonPressed() {
        print("Login!")
    }
    
}

