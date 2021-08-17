//
//  NetworkData.swift
//  Hacker News
//
//  Created by MacBook on 17.08.2021.
//

import Foundation

struct NetworkData: Decodable {
    // set hits from url
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    // add id cause Identifiable is requiried and transfer objectID from url
    var id: String {
        return objectID
    }
    // set objects from url
    let title: String
    let url: String
    let points: Int
    let objectID: String
}
