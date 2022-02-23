//
//  API.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import Foundation

struct API {
    static var baseUrl: String {
        return "https://www.alphavantage.co/query?"
    }
    
    static func symbolSearchUrl(for searchKey: String)-> String {
        return urlBy(symbol: .search, searchKey: searchKey)
    }
    
    static func quoteUrl(for searchKey: String)->String {
        return urlBy(symbol: .quote, searchKey: searchKey)
    }
    private static func urlBy(symbol:SymbolFunc,searchKey:String)-> String {
        switch symbol {
        case .search:
            return "\(baseUrl)function=\(symbol.rawValue)&apikey = \(key)&keywords=\(searchKey)"
        case .quote:
            return "\(baseUrl)function=\(symbol.rawValue)&apikey = \(key)&symbol=\(searchKey)"
        }
    }
    
    enum SymbolFunc:String{
        case search = "SYMBOL_SEARCH"
        case quote = "GLOBAL_QUOTE"
    }
    
}

extension API{
    static var key: String {
        return "S032NQ363CKQU4O3"
    }
}
