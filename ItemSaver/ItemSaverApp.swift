//
//  SheetsExampleApp.swift
//  SheetsExample
//
//  Created by Russell Gordon on 2022-05-11.
//

import SwiftUI

@main
struct ItemSaverApp: App {
    
    
    @State var items: [Item] = exampleItems

    // MARK: Computed properties
    var body: some Scene {
        WindowGroup {
            // Pass the source of truth down to the next view
            ItemListView(items: $items)
        }
    }
}
