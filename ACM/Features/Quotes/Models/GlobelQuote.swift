//
//  GlobelQuote.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import Foundation

struct GlobalQuoteResponce: Codable {
    var quote:String
    
    private enum CodingKeys:String , CodingKey {
        case quote = "Global Quote"
        
    }
}

