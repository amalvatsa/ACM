//
//  QuoteMangerProtocol.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import Foundation
protocol QuoteMangerProtocol {
    var quotes:[Quote]{ get set}
    func download(stocks :[String], completion: @escaping (Result<[Quote], NetworkError>)-> Void)
    
}
