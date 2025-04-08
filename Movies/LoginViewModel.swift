//
//  LoginViewModel.swift
//  MyMovies
//
//  Created by Vitor Henrique Barreiro Marinho on 07/04/25.
//

import Foundation

public class LoginViewModel {
    
    public init(){}
    
    public func isValidEmail(_ email: String) -> Bool {
        let emailRegEx =
        #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        print(emailPredicate.evaluate(with: email))
        return emailPredicate.evaluate(with: email)
    }
}
