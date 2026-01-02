//
//  WebStore.swift
//  GHomeBar
//
//  Created by Paolo Rotolo on 02.01.26.
//

import Foundation
import WebKit
import Combine

class WebStore: ObservableObject {
    @Published var isLoaded = false
    let page: WebPage
    
    init(url: URL) {
        self.page = WebPage()
        self.page.load(URLRequest(url: url))
        isLoaded = true
    }
}
