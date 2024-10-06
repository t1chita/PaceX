//
//  SatelliteViewModel.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//




import Foundation

final class SatelliteViewModel: ObservableObject {
    let url = "https://eyes.nasa.gov/apps/earth/?embed=true#/satellites/pace"
    
    func convertStringToUrlRequest() -> URLRequest? {
        guard let paymentURL = URL(string: url) else { return nil }
        
        return URLRequest(url: paymentURL)
    }
}
