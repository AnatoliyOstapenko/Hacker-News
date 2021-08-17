//
//  ContentView.swift
//  Hacker News
//
//  Created by MacBook on 17.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    // initialization of NetworkManager class related to ObservableObject protocol
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            // set container (like TableView in UIKit) to show data from posts array.
            // it's closure when post is an instance to inilizate Post struct and works like "for in" loop
            List(networkManager.post) { post in
                HStack {
                    Text(String(post.points)) // points from NetworkData
                    Text(post.title) // title from NetworkData
                    
                }
                
            }
            // set title on top of the screen
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
        
    }
    
}

// added array of posts

//let posts = [
//    Post(title: "Title 1", url: "Url 1", points: 1, objectID: "objectID A"),
//    Post(title: "Title 2", url: "Url 2", points: 2, objectID: "objectID B"),
//    Post(title: "Title 3", url: "Url 3", points: 3, objectID: "objectID C")
//]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
