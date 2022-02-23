//
//  StockQuoteManager.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import Foundation

final class StockQuoteManager: QuoteMangerProtocol, ObservableObject {
   
     
    @Published var quotes: [Quote] = []
    
    func download(stocks: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void) {
        var internalQuotes = [Quote]()
        let downloadQueue = DispatchQueue(label: "com.dvtechie.downloadQueue")
        let downloadgroup = DispatchGroup()
        
        
        stocks.forEach {
            (stock) in downloadgroup.enter()
            let url = URL(string: API.quoteUrl(for: stock))!
            NetworkManager<GlobalQuoteResponce>().fetch(from: url) {
                (result) in
                switch result {
                case.failure(let err):
                    print(err)
                    downloadQueue.async {
                        downloadgroup.leave()
                    }
                    
                case .success(let resp):
                    downloadQueue.async {
                    //internalQuotes.append(resp.quote)
                        downloadgroup.leave()
                    }
                }
            }
        }
        
        downloadgroup.notify(queue: DispatchQueue.global()) {
            completion(.success(internalQuotes))
            DispatchQueue.main.async {
                self.quotes.append(contentsOf: internalQuotes)
            }
        }
        
    }

}
