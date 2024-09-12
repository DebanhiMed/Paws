//
//  CardView.swift
//  Paws
//
//  Created by Isidro Treviño on 12/09/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                Image("pawIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                VStack(alignment: .leading) {
                    Text("IsidroTrevino")
                        .font(.subheadline)
                    Text("@Isidro")
                        .font(.subheadline)
                }
                Spacer()
            }
            Image("HE")
                .resizable()
                .scaledToFit()
                
            HStack {
                Text("Monterrey, Nuevo León")
                    .font(.caption)
                Spacer()
                Text("12/09/2024")
                    .font(.caption)
            }
            Text("Un gatito muy bonito llamado he perdido por mi casa el dia de hoy")
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
    CardView()
}
