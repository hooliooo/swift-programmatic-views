//
//  LoginView.swift
//  Test
//
//  Created by Julio Alorro on 11/21/16.
//  Copyright © 2016 Incubix Technologies, Inc. All rights reserved.
//

import UIKit
import SnapKit

class LoginView: UIView {
 
    fileprivate enum Text: String {
        case email, password
        case login = "Log In"
    }
    
    fileprivate enum Font: String {
        case regular = "AvenirNext-Regular"
    }
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Text.email.rawValue.capitalized
        textField.font = UIFont(name: Font.regular.rawValue, size: 17.0)
        textField.textColor = UIColor.darkGray
        textField.minimumFontSize = 17.0
        textField.borderStyle = UITextBorderStyle.roundedRect
        textField.setUpKeyboard(KeyboardType.email, returnKeyType: UIReturnKeyType.next)
        return textField
    }()
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = Text.password.rawValue.capitalized
        textField.font = UIFont(name: Font.regular.rawValue, size: 17.0)
        textField.textColor = UIColor.darkGray
        textField.minimumFontSize = 17.0
        textField.borderStyle = UITextBorderStyle.roundedRect
        textField.setUpKeyboard(KeyboardType.password, returnKeyType: UIReturnKeyType.send)
        return textField
    }()
    let loginButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.titleLabel?.font = UIFont(name: Font.regular.rawValue, size: 17.0)
        button.setTitle(Text.login.rawValue, for: UIControlState.normal)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.backgroundColor = UIColor.clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1.0
        button.set(cornerRadius: 5.0)
        return button
    }()
    
    fileprivate lazy var stackView: UIStackView = { [unowned self] in
        let stackView = UIStackView(arrangedSubviews: [self.emailTextField, self.passwordTextField, self.loginButton])
        stackView.axis = UILayoutConstraintAxis.vertical
        stackView.distribution = UIStackViewDistribution.fillEqually
        stackView.alignment = UIStackViewAlignment.fill
        stackView.spacing = 10.0
        return stackView
        }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setSubviewForAutoLayout(self.stackView)
        self.backgroundColor = UIColor.darkGray
        
        self.stackView.snp.remakeConstraints { [unowned self] (make: ConstraintMaker) in
            make.center.equalTo(self)
            make.leading.equalTo(self).offset(40.0)
            make.trailing.equalTo(self).offset(-40.0)
            
        }
        
        self.emailTextField.snp.makeConstraints { [unowned self] (make: ConstraintMaker) in
            make.height.equalTo(self).multipliedBy(0.075)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
