//
//  SatelliteView.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//


import SwiftUI
import WebKit

struct SatelliteView: View {
    @EnvironmentObject var router: NavigationManager
    @StateObject var satelliteViewModel = SatelliteViewModel()
    var body: some View {
        PaymentWebServiceRepresentable(paymentRequest: satelliteViewModel.convertStringToUrlRequest()!)
    }
}

struct PaymentWebServiceRepresentable: UIViewRepresentable {
    let paymentRequest: URLRequest
    
    init(paymentRequest: URLRequest) {
        self.paymentRequest = paymentRequest
    }
    
    func makeCoordinator() -> PaymentWebViewCoordinator {
        let webConfiguration = WKWebViewConfiguration()
        let webView =  WKWebView(frame: .zero, configuration: webConfiguration)
        return PaymentWebViewCoordinator(webView: webView)
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = context.coordinator.webView
        webView.uiDelegate = context.coordinator
        webView.load(paymentRequest)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}

class PaymentWebViewCoordinator: NSObject, WKUIDelegate {
    let webView: WKWebView
    
    init(webView: WKWebView) {
        self.webView = webView
    }
}
