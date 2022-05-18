//
//  ContentView.swift
//  H4K0R News
//
//  Created by 최윤제 on 2022/05/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) {
                Text($0.title)
            }
            .navigationTitle("H4K0R NEWS")
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13")
    }
}

struct Post: Identifiable{ // id를 필수로 가져야한다
    let id: String
    let title: String
    
}

var posts = [ 
    Post(id: "1", title: "hello"),
    Post(id: "2", title: "bonjour"),
    Post(id: "3", title: "halla")
]
