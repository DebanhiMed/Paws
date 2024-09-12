//
//  Sign In.swift
//  Paws
//
//  Created by Isidro Treviño on 11/09/24.
//

import SwiftUI

struct Sign_In: View {
    @State private var email = ""
    @State private var password = ""
    
    @State private var testEmail = "irdo@tec.mx"
    @State private var testPassword = "Debanhiminobia"
    
    @State private var showError = false
    @State private var isAuthenticated = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Paws")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .fontDesign(Font.Design.rounded)
                
                Image("pawIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 126, height: 126)
                
                Text("Sign in")
                    .font(.title)
                    .fontDesign(Font.Design.rounded)
                    .padding(.top)
                
                Form {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Email")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        TextField("Email", text: $email)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        
                        Text("Password")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        
                        
                        Button(action: {
                            authenticate()
                        }) {
                            NavigationLink(destination: Main(), isActive: $isAuthenticated){
                                Text("Sign In")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.top, 10)
                        
                        if showError {
                            Text("Invalid email or password")
                                .foregroundColor(.red)
                                .padding(.top, 5)
                        }
                        
                        Button(action: {
                            print("Forgot Password tapped")
                        }) {
                            Text("Forgot password?")
                                .font(.footnote)
                                .foregroundColor(.black)
                                .underline()
                        }
                        .padding(.top, 10)
                    }
                    .frame(width: 300)
                    .padding(20)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
                .formStyle(.columns)
                
                Spacer()
                
                HStack {
                    Button(action: {
                        print("Create account button tapped")
                    }) {
                        Text("Don't have an account?")
                            .font(.footnote)
                        NavigationLink(destination: SignUp()){
                            Text("Create one.")
                        }
                    }
                    .font(.footnote)
                    .foregroundStyle(Color.black)
                    
                    Image(systemName: "arrow.right")
                        .padding(.leading, 40)
                }
            }
            .padding(.horizontal)
            
        }
        Spacer()
    }
    
    func authenticate() {
        if email == testEmail && password == testPassword {
            isAuthenticated = true
            showError = false
        } else {
            showError = true
        }
    }
}

#Preview {
    Sign_In()
}
