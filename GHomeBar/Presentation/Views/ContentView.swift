//
//  ContentView.swift
//  GHomeBar
//
//  Created by Paolo Rotolo on 02.01.26.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @ObservedObject var store: WebViewModel
        @State private var showAbout = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 0) {
                HStack {
                    Text("GHomeBar")
                        .font(.headline)
                    
                    Spacer()
                    Menu {
                        Button("menu.about") {
                            showAbout = true
                        }
                        
                        Divider()
                        Button("menu.quit") {
                            NSApplication.shared.terminate(nil)
                        }
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            .font(.system(size: 18))
                            .foregroundColor(.primary)
                    }
                    .menuStyle(.borderlessButton)
                    .fixedSize()
                }
                .padding()
                
                Divider()
                WebViewWrapper(webView: store.webView).disabled(showAbout)
            }
            .background(Color(nsColor: .windowBackgroundColor))
            
            if showAbout {
                AboutView(
                    onDismiss: { showAbout = false }
                )
            }
        }.edgesIgnoringSafeArea(.horizontal)
    }
}

#Preview {
    ContentView(store: WebViewModel(
        url: URL(string: "https://home.google.com")!
    ))
}
