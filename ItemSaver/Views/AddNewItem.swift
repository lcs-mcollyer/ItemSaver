//
//  ContentView.swift
//  ItemSaver
//
//  Created by Matthew Collyer on 2022-05-05.
//

import SwiftUI

struct AddNewItem: View {
    
    
    @Binding var items : [Item]
    
    @Binding var isAddNewItemShowing: Bool
    
    @State var newItemName = ""
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading, spacing: 10) {
                TextField("Enter New Item", text: $newItemName)
                    .padding()
                
                Spacer()
            }
            .navigationTitle("Add Item")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    
                    Button(action: {
                        
                        // Hide the view by setting the boolean back to false
                        isAddNewItemShowing = false
                        
                       
                        let newId = items.count + 1
                        
                       
                        let newItem = Item(id: newId, name: newItemName)
                        
                        
                        items.append(newItem)
                        
                    }, label: {
                        
                        Text("Done")
                        
                    })
                    
                }
            }
        }
    }
}

struct AddNewItem_Previews: PreviewProvider {
    static var previews: some View {
        AddNewItem(items: .constant(exampleItems),
                   isAddNewItemShowing: .constant(true))
    }
}
