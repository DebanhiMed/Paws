//
//  CardModel.swift
//  Paws
//
//  Created by Debanhi Medina on 12/09/24.
//

import Foundation

struct CardModel: Identifiable{
    var id = UUID()
    var icon : String
    var name : String
    var username : String
    var petImage : String
    var place : String
    var date : String
    var description : String
}

extension CardModel {
    public static var defaultCard = CardModel(icon: "pawIcon", name: "IsidroTrevino", username: "@Isidro", petImage: "HE", place: "Monterrey, Nuevo León", date: "12/09/2024", description: "Un gatito muy horrible llamado he perdido por mi casa el dia de hoy")
}
