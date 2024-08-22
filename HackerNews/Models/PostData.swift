//
//  PostData.swift
//  HackerNews
//
//  Created by Rishabh Sharma on 21/08/24.
//

import Foundation
struct Results: Decodable{
    let hits: [Post]
}

struct Post : Decodable, Identifiable{
    var id : String{
        return objectID
    }
    let objectID: String
    let title : String
    let points : Int
    let url : String?
}
