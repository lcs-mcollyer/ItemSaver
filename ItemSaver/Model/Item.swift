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
    
    let url : String

}


let exampleItems = [
    
    
    Item(id: 1, name: "992 gt3", price: "$200,000", url: "https://collectingcars.com/for-sale/2021-porsche-911-992-gt3-clubsport")
    
    ,

    Item(id: 2, name: "718 gt4", price: "$97,500", url: "https://collectingcars.com/for-sale/2020-porsche-718-cayman-gt4-clubsport")
    
    ,
    
]

