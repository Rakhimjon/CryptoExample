//
//  APIErrorResponse.swift
//  CryptoExample
//
//  Created by Rahimjon Abdullayev on 28/01/22.
//
struct APIErrorResponse: Codable {
    let message: String
    let type: Int
    let response: String?
    
   private enum CodingKeys: String, CodingKey {
            case message = "Message"
            case type = "Type"
            case response = "Response"
        }
}
