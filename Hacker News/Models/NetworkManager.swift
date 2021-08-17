//
//  NetworkManager.swift
//  Hacker News
//
//  Created by MacBook on 17.08.2021.
//

import Foundation

// add ObservableObject protocol for Combine framework’s type
class NetworkManager: ObservableObject {
    
    // property related to ObservableObject protocol
    @Published var post = [Post]()
    
    
    //perform request
    func fetchData() {
        // trigger struct URL to pass API url
        // unwrapping url to proceed further
        guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else {
            return
        }
        
        // create URL session, and pass url to session
        let session = URLSession(configuration: .default)
        
        // give a session a data task
        // set a closure to unwrap all off completionHandler data, interaction with dataTask
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            // unwraping error, and way out if error happens
            if error != nil {
                print(error?.localizedDescription ?? "error")
                return // set return to way out from handle method
            }
            // unwrapping data to convert Data to String further
            guard let safeData = data else {
                return
            }
            // initialized decoder from JSONDecoder class
            let decoder = JSONDecoder()
            // interaction with NetworkData struct
            do {
                // get results or decoded data from url
                let decodedData = try decoder.decode(NetworkData.self, from: safeData)
                
                // get data from url via NetworkManager
                self.post = decodedData.hits
                
                
            } catch {
                print(error)

            }
            
            
            
        }
        // start the task (Resumes the task, if it is suspended)
        dataTask.resume()
  }
}
