//
//  DetailView.swift
//  Hacker News
//
//  Created by MacBook on 18.08.2021.
//

import SwiftUI


struct DetailView: View {
    
    //added variable url optional, cause we haven't known url yet
    let url: String?
    
    
    var body: some View {
        // initialization WebView struct to dispatch url
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        // initialization of url
        DetailView(url: "https://www.google.com")
    }
}

