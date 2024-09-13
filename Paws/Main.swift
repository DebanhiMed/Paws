//
//  Main.swift
//  Paws
//
//  Created by Isidro Treviño on 12/09/24.
//

import SwiftUI

struct Main: View {
    
    @State var cardVM = CardViewModel()
    
    var body: some View {
        ScrollView {
            Text("Feed")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .fontDesign(Font.Design.rounded)
            ForEach(cardVM.array){
                c in CardView(card: c)
            }
            
        }
        .scrollIndicators(.hidden)
        HStack {
            Spacer()
            Image(systemName: "house.fill")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                //.resizable()
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
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Main()
}
