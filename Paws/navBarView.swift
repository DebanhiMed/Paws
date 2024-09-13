//
//  NavBarView.swift
//  Paws
//
//  Created by Isidro Treviño on 13/09/24.
//

import SwiftUI

struct navBarView: View {
    var body: some View {
        Spacer()
        HStack {
            Spacer()
            
            NavigationLink(destination: Main()){
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
            }
            
            Spacer()
            
            NavigationLink(destination: addView()){
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28)
            }
            
            Spacer()
            
            NavigationLink(destination: profileView()){
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
            }
            
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    navBarView()
}
