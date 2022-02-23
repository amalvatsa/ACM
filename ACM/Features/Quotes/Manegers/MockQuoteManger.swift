//
//  MockQuoteManger.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import Foundation

final class MockQuoteManger: QuoteMangerProtocol, ObservableObject {
   
   
    
    
    @Published var quotes: [Quote] = []
    
    func download(stocks: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void) {
        let aapl = Quote(symbol: "AAPL", open: "135.90", close: "136.90", low: "133.77", price: "135.13", change: "-0.26", ChangePercent: "-0.19%")
        
        
        let goog = Quote(symbol: "GOOG", open: "2099.51", close: "2102.03", low: "2077.32", price: "2095.89", change: "0.51", ChangePercent: "0.024%")
        
        for _ in 0..<8 {
            quotes.append(contentsOf: [aapl,goog])
        }
        
    }
    
    
}
