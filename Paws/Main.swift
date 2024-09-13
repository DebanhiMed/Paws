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
        VStack {
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
            .navigationBarBackButtonHidden(true)
        }
        navBarView()
    }
}

#Preview {
    Main()
}
