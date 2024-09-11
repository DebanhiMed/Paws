//
//  Sign In.swift
//  Paws
//
//  Created by Isidro Treviño on 11/09/24.
//

import SwiftUI

struct Sign_In: View {
    @State private var Email = ""
    @State private var Password = ""
    var body: some View {
        VStack {
            Text("Paws")
                .font(.system(size: 50))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .fontDesign(Font.Design.rounded)
            
            HStack {
                Image("pawIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 126, height: 126)
            }
            Spacer()
            
            VStack{
                Form {
                    Label("Email", systemImage: "envelope")
                        .tint(Color.black)
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                }
            }
                
        }
        .padding(.horizontal)
        Spacer()
    }
}

#Preview {
    Sign_In()
}
