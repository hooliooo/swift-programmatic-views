//
//  Extensions.swift
//  Test
//
//  Created by Julio Alorro on 11/21/16.
//  Copyright © 2016 Incubix Technologies, Inc. All rights reserved.
//

import UIKit

extension UIView {
    internal func setSubviewForAutoLayout(_ subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subview)
    }
    internal func setSubviewsForAutoLayout(_ subviews: [UIView]) {
        _ = subviews.map { self.setSubviewForAutoLayout($0) }
    }
    
    internal func set(cornerRadius: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
    }
}

extension UITextField {
    internal func setUpKeyboard(_ type: KeyboardType, returnKeyType: UIReturnKeyType) {
        self.autocapitalizationType = UITextAutocapitalizationType.none
        self.autocorrectionType = UITextAutocorrectionType.no
        self.spellCheckingType = UITextSpellCheckingType.no
        self.keyboardAppearance = UIKeyboardAppearance.default
        self.returnKeyType = returnKeyType
        self.clearButtonMode = UITextFieldViewMode.always
        
        switch type {
        case .email:
            self.keyboardType = UIKeyboardType.emailAddress
            
        case .password:
            self.keyboardType = UIKeyboardType.default
            self.isSecureTextEntry = true
            
        case .numbers:
            self.keyboardType = UIKeyboardType.numbersAndPunctuation
            
        case . phonenumber:
            self.keyboardType = UIKeyboardType.phonePad
            
        case .normal:
            self.keyboardType = UIKeyboardType.default
        }
    }
}
