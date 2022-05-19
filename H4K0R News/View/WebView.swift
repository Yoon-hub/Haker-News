//
//  WebView.swift
//  H4K0R News
//
//  Created by 최윤제 on 2022/05/20.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable{
    var urlString: String
    
    func makeUIView(context: Context) -> some UIView {
        
        let webConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    
}
