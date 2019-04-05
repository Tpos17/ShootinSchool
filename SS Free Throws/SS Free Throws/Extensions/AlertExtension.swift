//
//  AlertExtension.swift
//  SS Free Throws
//
//  Created by Developer Account on 4/4/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import UIKit


extension UIAlertController {
    
    func isValidEmail(_ email: String) -> Bool {
        return email.characters.count > 0 && NSPredicate(format: "self matches %@", "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,64}").evaluate(with: email)
    }
    
    func isValidPassword(_ name: String) -> Bool {
        return name.characters.count > 2 && name.rangeOfCharacter(from: .newlines) == nil
    }
    
    @objc func validateMailNameAlert() {
        if let email = textFields?[0].text,
            let password = textFields?[1].text,
            let action = actions.last {
            action.isEnabled = isValidEmail(email) && isValidPassword(password)
        }
    }
}
