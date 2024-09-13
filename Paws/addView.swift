//
//  addView.swift
//  Paws
//
//  Created by Isidro Treviño on 12/09/24.
//

import SwiftUI

struct addView: View {
    @State private var municipality = ""
    @State private var date = ""
    @State private var description = ""
    @State private var image: UIImage? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .center) {
                    Text("Paws")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .fontDesign(Font.Design.rounded)
                    
                    Form {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Picture")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            Button(action: {
                            }) {
                                HStack {
                                    Text("Upload")
                                        .foregroundColor(.gray)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "arrow.up.square.fill")
                                        .foregroundColor(.gray)
                                }
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            }
                            
                            Text("Municipality")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            TextField("Municipality", text: $municipality)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            
                            Text("Date")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            TextField("DD/MM/YYYY", text: $date)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                                .keyboardType(.numbersAndPunctuation)
                            
                            Text("Description")
                                .font(.headline)
                                .foregroundColor(.black)
                            
                            TextField("Description", text: $description)
                                .padding()
                                .background(Color(.systemGray6))
                                .cornerRadius(10)
                            

                            Button(action: {
                               
                            }) {
                                Text("Add")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding(.top, 10)
                        }
                        .padding(20)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                    }
                    .formStyle(.columns)
                }
                .padding(.horizontal)
                
                Spacer()
                

                HStack {
                    Spacer()
                    Image(systemName: "house.fill")
                        .scaledToFit()
                        .frame(width: 30)
                    Spacer()
                    Image(systemName: "plus.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25)
                    Spacer()
                }
                .padding()
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    addView()
}
