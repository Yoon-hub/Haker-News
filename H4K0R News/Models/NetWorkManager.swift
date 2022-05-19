//
//  NetWorkManager.swift
//  H4K0R News
//
//  Created by 최윤제 on 2022/05/18.
//

import Foundation


class NetWorkManager : ObservableObject {
    
    @Published var posts : [Post] = []  // 변경을 감지할 변수


    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do{
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits  // results.hits를 posts로 복사
            
                            }
                            
                        } catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }

}



