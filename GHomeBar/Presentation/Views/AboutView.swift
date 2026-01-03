//
//  AboutView.swift
//  GHomeBar
//
//  Created by Paolo Rotolo on 02.01.26.
//

import SwiftUI
import LaunchAtLogin

struct AboutView: View {
    var onDismiss: () -> Void

    var body: some View {
        Color.black.opacity(0.4)
            .ignoresSafeArea()
            .onTapGesture {
                withAnimation { onDismiss() }
            }
        VStack(spacing: 20) {
            Text("about.title")
                .font(.headline)
            
            Text("about.disclaimer")
                .multilineTextAlignment(.center)
                .font(.body)
            
            Divider().padding(.horizontal, 20)
            
            LaunchAtLogin.Toggle()
            
            Link(destination: URL(string: "https://github.com/paolorotolo/GHomeBar")!) {
                HStack(spacing: 6) {
                    Image(systemName: "chevron.left.forwardslash.chevron.right")
                    Text("about.github")
                }
                .fontWeight(.medium)
            }
            .buttonStyle(.link)
            
            Text("about.license")
                .font(.caption2)
                .foregroundColor(.secondary)
            
            Button("about.ok") {
                withAnimation { onDismiss() }
            }
            .keyboardShortcut(.defaultAction)
        }
        .padding(20)
        .frame(width: 250)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(nsColor: .windowBackgroundColor))
                .shadow(radius: 10)
        )
        .transition(.scale.combined(with: .opacity))
    }
}

#Preview {
    AboutView() {
        
    }
}

