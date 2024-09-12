//
//  Main.swift
//  Paws
//
//  Created by Isidro Treviño on 12/09/24.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ScrollView {
            Text("Paws")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .fontDesign(Font.Design.rounded)
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .scrollIndicators(.hidden)
        HStack {
            Spacer()
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .frame(width: 30)
            Spacer()
            Image(systemName: "plus.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 28)
            Spacer()
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Main()
}
