//
//  ContentView.swift
//  MyMovies
//
//  Created by Vitor Henrique Barreiro Marinho on 07/04/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    let viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .onChange(of: email) { newValue in
                       viewModel.isValidEmail(newValue)
                    }


            
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            
            
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
