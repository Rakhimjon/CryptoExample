//
//  Endpoint.swift
//  CryptoExample
//
//  Created by Rahimjon Abdullayev on 28/01/22.
//

import Foundation

enum Endpoint {
    
    case getTopList(limit: String, currency: String)
    
    case getNews(category: String)
    
    var baseURL: String {
        switch self {
        default:
            return "min-api.cryptocompare.com"
        }
    }
    
    var method: String {
        switch self {
        default:
            return "GET"
        }
    }
    
    var query: [URLQueryItem] {
        switch self {
        case .getTopList(let limit, let currency):
            return [
                URLQueryItem(name: "limit", value: limit),
                URLQueryItem(name: "tsym", value: currency)
            ]
            
        case .getNews(let category):
            return [
                URLQueryItem(name: "categories", value: category),
            ]
        }
    }
    
    var path: String {
        switch self {
        case .getTopList(_, _):
            return "/data/top/totaltoptiervolfull"
        
        case .getNews(category: _):
            return "/data/v2/news/"
        }
    }
    
    var scheme: String {
        switch self {
        default:
            return "https"
        }
    }
}

