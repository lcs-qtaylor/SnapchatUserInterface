//
//  model.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import Foundation

struct chatData: Identifiable {
    let id = UUID()
    let name: String
    let Bitmoji: String
    let time: String
    let square: String
    let textBoxes: String
}

let listOfItem = [

    chatData(name: "ben", Bitmoji: ".orange", time: "1h", square: "square", textBoxes: "1"),
    
    chatData(name: "hether", Bitmoji: ".green", time: "5h", square: "square.fill",textBoxes: "2"),

    chatData(name: "bob", Bitmoji: ".pink", time: "7h", square: "square.fill", textBoxes: "3"),

    chatData(name: "bill", Bitmoji: ".yellow", time: "10m", square: "square", textBoxes: "4"),
    
    chatData(name: "girl", Bitmoji: ".red", time: "13h", square: "square.fill", textBoxes: "5")
]
