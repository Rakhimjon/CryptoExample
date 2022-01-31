//
//  LiveTickerResponse.swift
//  CryptoExample
//
//  Created by Rahimjon Abdullayev on 28/01/22.
//

struct LiveTickerResponse: Codable {
    let type: String
    let fromSymbol: String
    let price: Double
    let open24Hour: Double?
    
    private enum CodingKeys: String, CodingKey {
            case type = "TYPE"
            case fromSymbol = "FROMSYMBOL"
            case price = "PRICE"
            case open24Hour = "OPEN24HOUR"
         }
}
