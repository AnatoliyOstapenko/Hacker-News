//
//  DetailView.swift
//  Hacker News
//
//  Created by MacBook on 18.08.2021.
//

import SwiftUI

struct DetailView: View {
    
    //added variable url optional, cause we haven't know url yet
    let url: String?
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        // initialization of url
        DetailView(url: "https://www.google.com")
    }
}
