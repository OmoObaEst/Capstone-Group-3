//
//  LoginView.swift
//  BackupCode
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct VolunteerLoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color(.voluntRBeige)
                .ignoresSafeArea()
            VStack {
                Text("Log in to your account")
                    .font(.largeTitle)
                    .bold()
                    .frame(width: 350.0, height: 9.0)
                Spacer()
                    .frame(width: 4.0, height: 31.0)
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Log In") {
                    // Perform login action here
                    print("Attempting login with username: \(username) and password: \(password)")
                }
                .padding()
                .background(Color("voluntRLightBurgundy"))
                .foregroundColor(Color.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

#Preview {
    VolunteerLoginView()
}
