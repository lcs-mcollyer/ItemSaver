//
//  FullPageWebView.swift
//  ItemSaver
//
//  Created by Matthew Collyer on 2022-05-12.
//

import SwiftUI

struct FullPageWebView: View {
    var body: some View {
        
        // This will take up the full screen
        // Navigation is not restricted
        WebView(address: "https://www.russellgordon.ca/",
                restrictToAddressBeginningWith: "")

    }
}

struct FullPageWebView_Previews: PreviewProvider {
    static var previews: some View {
        FullPageWebView()
    }
}
