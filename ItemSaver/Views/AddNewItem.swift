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
    
    @State var newItemPrice = ""
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading, spacing: 10) {
                TextField("Enter New Item", text: $newItemName)
                    .padding()
                
                Spacer()
                TextField("Enter Item Price", text: $newItemPrice)
            }
        
            // MARK: Need this to be linked to the actual page.
            .navigationTitle("Add Item")
          
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    
                    Button(action: {
                        
                        // Hide the view by setting the boolean back to false
                        isAddNewItemShowing = false
                        
                       
                        let newId = items.count + 1
                        
                       
                        let newItem = Item(id: newId, name: newItemName, price: newItemPrice)
                        
                        
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
