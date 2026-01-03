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

    // The actual engine that loads the website
    let webView: WKWebView
    
    init(url: URL) {
        // 1. Initialize the WebView configuration
        let config = WKWebViewConfiguration()
        
        // 2. Create the WebView
        self.webView = WKWebView(frame: .zero, configuration: config)
        
        // 3. Load the Request
        let request = URLRequest(url: url)
        self.webView.load(request)
        isLoaded = true
    }
}
