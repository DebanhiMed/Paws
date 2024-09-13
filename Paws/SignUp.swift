//
//  SignUp.swift
//  Paws
//
//  Created by Debanhi Medina on 11/09/24.
//

import SwiftUI

struct SignUp: View {
    
    @State private var name = ""
    @State private var surname = ""
    @State private var number = ""
    @State private var region = ""
    @State private var age = ""
    @State private var email = ""
    @State private var password = ""
    @State private var passwordConf = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                HStack {
                    Image("pawIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 80)
                        .padding(.bottom)
                    
                    Text("Sign Up")
                }
                
                Form {
                    VStack(alignment: .leading, spacing: 13) {
                        Text("Name")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        TextField("Name", text: $name)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .autocapitalization(.words)
                        
                        Text("Surname")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        SecureField("Surname", text: $surname)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        
                        Text(" Phone Number")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        SecureField("Phone Number", text: $number)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        
                        Text("Region")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        SecureField("Region", text: $region)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)

                        
                        Text("Age")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        SecureField("Age", text: $age)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                
                        Button(action: {
                            print("Sign Up button tapped")
                        }) {
                            NavigationLink(destination: Main()){
                                Text("Sign Up")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
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
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Sign In")
                    }
                })
            }
        }
    }
}

#Preview {
    SignUp()
}
