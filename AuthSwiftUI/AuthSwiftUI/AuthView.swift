//
//  AuthView.swift
//  AuthSwiftUI
//
//  Created by Shivansh Singh on 08/10/23.
//

import SwiftUI

struct AuthView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var loggedIn = false
    @State private var registrationSucceeded = false

    var body: some View {
        VStack {
            Text(loggedIn ? "Logged In" : "Not Logged In")
                .font(.title)

            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            HStack {
                Button("Login") {
                    loggedIn = login(username: username, password: password)
                }
                .padding()

                Button("Logout") {
                    logout()
                    loggedIn = false
                }
                .padding()
            }

            Button("Register") {
                registrationSucceeded = register(username: username, password: password)
            }
            .padding()
        }
        .padding()
        .alert(isPresented: $registrationSucceeded) {
            Alert(title: Text("Registration Successful"), message: Text("You can now log in."), dismissButton: .default(Text("OK")))
        }
    }

    private func login(username: String, password: String) -> Bool {
        let authManager = ComplexAuthProfileManager(userId: "123", username: "exampleUser")
        return ((authManager?.login(withUsername: username, andPassword: password)) != nil)
    }

    private func logout() {
        let authManager = ComplexAuthProfileManager(userId: "123", username: "exampleUser")
        authManager?.logout()
    }

    private func register(username: String, password: String) -> Bool {
        let authManager = ComplexAuthProfileManager(userId: "123", username: "exampleUser")
        return ((authManager?.register(withUsername: username, andPassword: password)) != nil)
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
