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

}

let exampleItem = Item(id: 1, name: "991 gt3 rs")

let exampleItems = [
    
    Item(id: 1, name: "992 st")
    
    ,
    
    Item(id: 2, name: "992 gt3")
    
    ,

    Item(id: 3, name: "718 gt4")
    
    ,
    
]

