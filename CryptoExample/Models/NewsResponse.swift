//
//  NewsResponse.swift
//  CryptoExample
//
//  Created by Rahimjon Abdullayev on 28/01/22.
//

struct NewsResponse: Codable {
    let news: [News]
    
    private enum CodingKeys: String, CodingKey {
            case news = "Data"
         }
}

// MARK: - Datum
struct News: Codable {
    let title: String
    let source: String
    let body: String
}

