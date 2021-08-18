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
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        // WKWebView class to add web content to my app
        return WKWebView()
    }
    // change UIViewType on WKWebView
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // unwrapping urlStrig constant
        guard let safeUrlString = urlString else {
            return
        }
        // unwrapping path to a remote file
        guard let url = URL(string: safeUrlString) else {
            return
        }
        // URL load request
        let request = URLRequest(url: url)
        // navigates to a requested URL
        uiView.load(request)
    }
}
