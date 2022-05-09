//
//  ContentView.swift
//  ItemSaver
//
//  Created by Matthew Collyer on 2022-05-05.
//

import SwiftUI

struct ContentView: View {
   
//    @State var URL : String
    
    var body: some View {
        
        VStack{
            
            //need to find generic image first
            Image("Speedster")
            
            
            //Text field for title
            Text("Enter Title")
            
            // Text field for numerical value
            Text("Enter $")
            
            // Text field to save live url link
           Text("Enter URL")
                .foregroundColor(.blue)
//                .textFieldStyle(.bordered)
            
            Button(action: {}, label: {Text("Confirm and Save")})
                .buttonStyle(.bordered)
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
