//
//  ContentView.swift
//  H4K0R News
//
//  Created by 최윤제 on 2022/05/18.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var netWorkManger = NetWorkManager()
    
    var body: some View {
        NavigationView{
            List(netWorkManger.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4K0R NEWS")
        }
        .onAppear {
            self.netWorkManger.fetchData()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 13")
    }
}


