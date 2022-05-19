//
//  PostData.swift
//  H4K0R News
//
//  Created by 최윤제 on 2022/05/18.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String? 
}
