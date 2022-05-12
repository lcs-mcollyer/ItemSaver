//
//  ItemListView.swift
//  ItemSaver
//
//  Created by Matthew Collyer on 2022-05-11.
//

import SwiftUI

struct ItemListView: View {
    
    @Binding var items : [Item]
    
    @State var isAddNewItemShowing = false
    
    var body: some View {
        
        NavigationView {
            
            List(items) { currentItem in
                VStack{
                Text(currentItem.name)
                    Text(currentItem.price)
                }
            }
            .navigationTitle("Items")
        }
        
//        .font(.title)
       
        .toolbar{
            ToolbarItem(placement: .primaryAction) {
                
                Button(action: {
                    isAddNewItemShowing = true
                    
                }, label: {
                    
                    Text("Add New Item")
                        .foregroundColor(.black)
                        .font(.title)
                })
                
            }
        }
        .sheet(isPresented: $isAddNewItemShowing) {
            AddNewItem(items: $items,
                       isAddNewItemShowing: $isAddNewItemShowing)
        }
        
        
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView(items: .constant(exampleItems))
    }
}
