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
            VStack{
                
                List {
                    ForEach(items) { currentItem in
                            VStack{
                                Text(currentItem.name)
                                Text(currentItem.price)
                                
                                Link("Website", destination: URL(string: currentItem.url)!)
                                    .foregroundColor(.blue)
                                    
                                //                                  ^
                                // Takes the users inputeed Url and |
                                // Allows me to have the website linked to a pahrase such as "Website"
                                
                            }
                        }
                    .onDelete(perform: delete)
                }
               
               
                
                .navigationTitle("Items")
                //Simply the title above the item list
                .toolbar{
                    ToolbarItem(placement: .primaryAction) {
                        
                        Button(action: {
                            // Change it from the innital flase boolean to true in order
                            // To show the page.
                            isAddNewItemShowing = true
                            
                        }, label: {
                            // Shows the + in hte top right
                            Text("+")
                                .font(.title)
                                            
                        })
                        
                    }
                }
            }
           
        }
             
        
        
        .sheet(isPresented: $isAddNewItemShowing) {
            AddNewItem(items: $items,
                       isAddNewItemShowing: $isAddNewItemShowing)
        }
        
        
    }
    
    func delete(at offsets: IndexSet) {
            items.remove(atOffsets: offsets)
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView(items: .constant(exampleItems))
    }
}
