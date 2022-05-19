//
//  DetailView.swift
//  H4K0R News
//
//  Created by 최윤제 on 2022/05/19.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com").previewDevice("iPhone 13")
    }
}

struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> some UIView {
        return WKWebView()
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
         
    }
    
}
