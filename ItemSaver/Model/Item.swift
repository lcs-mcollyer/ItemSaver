//
//  Item.swift
//  ItemSaver
//
//  Created by Matthew Collyer on 2022-05-11.
//

import Foundation

struct Item: Identifiable {
    let id : Int
    let name : String
    let price : String

}

let exampleItem = Item(id: 1, name: "991 gt3 rs", price: "$300")

let exampleItems = [
    
    Item(id: 1, name: "992 st", price: "$300")
    
    ,
    
    Item(id: 2, name: "992 gt3", price: "$350")
    
    ,

    Item(id: 3, name: "718 gt4", price: "$400")
    
    ,
    
]

