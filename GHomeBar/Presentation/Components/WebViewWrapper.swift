//
//  WebView.swift
//  GHomeBar
//
//  Created by Paolo Rotolo on 03.01.26.
//

import SwiftUI
import WebKit

struct WebViewWrapper: NSViewRepresentable {
    let webView: WKWebView

    func makeNSView(context: Context) -> WKWebView {
        return webView
    }

    func updateNSView(_ nsView: WKWebView, context: Context) {
    }
}
