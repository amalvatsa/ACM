//
//  Quote.swift
//  ACM
//
//  Created by Amal Vatsa on 22/02/22.
//

import Foundation
struct Quote: Codable {
    var symbol:String
    var open:String
    var close:String
    var low:String
    var price:String
    var change:String
    var ChangePercent:String
    private enum CodingKeys:String,CodingKey{
        case symbol = "01. symbol"
        case open   = "02. open"
        case close  = "03. high"
        case low   = "04. low"
        case price = "05. price"
        case change  = "09. change"
        case ChangePercent = "10. change percent"
    }


}
