//
//  WebStore.swift
//  GHomeBar
//
//  Created by Paolo Rotolo on 02.01.26.
//

import Foundation
import WebKit
import Combine

class WebViewModel: ObservableObject {
    @Published var isLoaded = false

    let webView: WKWebView
    
    init(url: URL) {
        let config = WKWebViewConfiguration()
        self.webView = WKWebView(frame: .zero, configuration: config)
        
        let request = URLRequest(url: url)
        self.webView.load(request)
        isLoaded = true
    }
}
