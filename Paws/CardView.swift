//
//  CardView.swift
//  Paws
//
//  Created by Isidro Treviño on 12/09/24.
//

import SwiftUI

struct CardView: View {
    
    let card : CardModel
    
    var body: some View {
        VStack {
            HStack {
                Image(card.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                VStack(alignment: .leading) {
                    Text(card.name)
                        .font(.subheadline)
                    Text(card.username)
                        .font(.subheadline)
                }
                Spacer()
            }
            Image(card.petImage)
                .resizable()
                .scaledToFit()
                
            HStack {
                Text(card.place)
                    .font(.caption)
                Spacer()
                Text(card.date)
                    .font(.caption)
            }
            Text(card.description)
                .font(.subheadline)
                .padding(.top, 5)
            Spacer()
        }
        .frame(width: 300, height: 320)
        .padding(20)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding()
        Spacer()
    }
}

#Preview {
    CardView(card : CardModel.defaultCard)
}
