//
//  DetailView.swift
//  Hacker News
//
//  Created by MacBook on 18.08.2021.
//

import SwiftUI
// import WebKit from UIKit to use WebView
import WebKit

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
// added a wrapper for a UIKit view to integrate WebView into SwiftUI view
struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        // WKWebView class to add web content to my app
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
    
}
