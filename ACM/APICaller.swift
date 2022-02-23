//
//  APICaller.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import Foundation

final class APICaller{
    static let shared = APICaller()
    
    private struct Constants{
        static let apiKey = "S032NQ363CKQU4O3"
    }
    private init(){}
    
    public func getallStocksData(
    completion: @escaping (Result<[String],Error>)-> Void)
    {
        
    }
}
