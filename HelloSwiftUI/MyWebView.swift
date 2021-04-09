//
//  MyWebView.swift
//  HelloSwiftUI
//
//  Created by 송인걸 on 2021/04/09.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    var urlToLoad: String
    
    func makeUIView(context: Context) -> some WKWebView {
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<MyWebView>) {
        
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.google.com")
    }
}
