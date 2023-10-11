//
//  GifView.swift
//  Braille
//
//  Created by Eliana Ecuba on 09/10/23.
//


import SwiftUI
import WebKit

struct GifImage: UIViewRepresentable {
    private let name: String
    private let speed: Double
    
    init(_ name: String, speed: Double = 1) {
        self.name = name
        self.speed = speed
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = Bundle.main.url(forResource: name, withExtension: "gif") {
            let data = try! Data(contentsOf: url)
            webView.load(
                data,
                mimeType: "image/gif",
                characterEncodingName: "UTF-8",
                baseURL: url.deletingLastPathComponent()
            )
        }
        webView.scrollView.isScrollEnabled = false
        
        webView.isOpaque = false
        webView.backgroundColor = UIColor.clear
        webView.scrollView.backgroundColor = UIColor.clear
        
        webView.configuration.userContentController.addUserScript(
            WKUserScript(source: "document.documentElement.style.animationDuration = '\(speed)s';", injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        )
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

struct GifView: View {
    var body: some View {
        HStack {
            GifImage("1", speed: 1.0)
               // .frame(width: 393, height: 294)
        }
    }
}

struct GifView_Previews: PreviewProvider {
    static var previews: some View {
        GifView()
    }
}

