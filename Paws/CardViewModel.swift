//
//  SwiftUIView.swift
//  Paws
//
//  Created by Debanhi Medina on 12/09/24.
//
import Foundation
import SwiftUI

@Observable

class CardViewModel{
    
    var array = [CardModel]()
    
    init(){
        getPost()
    }
    
    func getPost(){
        var card : CardModel
        
        card = CardModel(icon: "pawIcon", name: "IsidroTrevino", username: "@Isidro", petImage: "HE", place: "Monterrey, Nuevo León", date: "12/09/2024", description: "Un gatito muy horrible llamado he perdido por mi casa el dia de hoy")
        array.append(card)
        
        card = CardModel(icon: "pawIcon", name: "DebanhiMedina", username: "@debbelzz", petImage: "el", place: "Monterrey, Nuevo León", date: "19/09/2024", description: "Calico embarazado afuera de mi casa con 7 gatos")
        array.append(card)
        
        card = CardModel(icon: "pawIcon", name: "AlejandraPeña", username: "@alepmzz", petImage: "aleEl", place: "Monterrey, Nuevo León", date: "04/08/2024", description: "Gato blanco en constitución, ya lo resguarde pero se ve muy asustado")
        array.append(card)
        
        card = CardModel(icon: "pawIcon", name: "XimenaRenata", username: "@ximere", petImage: "weima", place: "Monterrey, Nuevo León", date: "15/03/2024", description: "Un perro grande afuera de mi trabajo, lo rescate y lo resguarde")
        array.append(card)
        
        card = CardModel(icon: "pawIcon", name: "RobertoPiña", username: "@pina66", petImage: "deichi", place: "Monterrey, Nuevo León", date: "02/05/2024", description: "Perro no reconocido, lo encontre por mi colonia y tenía mucha hambre")
        array.append(card)
        
    }
}


/*
#Preview {
    CardViewModel()
}*/
