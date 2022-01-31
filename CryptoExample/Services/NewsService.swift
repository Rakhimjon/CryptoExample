//
//  NewsService.swift
//  CryptoEx
//
//  Created by Rahimjon Abdullayev on 28/01/22.
//

protocol NewsServiceProtocol {
    func fetchNews(category:String, completion: @escaping (Result<NewsResponse,APIErrorResult>)->() )
}

struct NewsService: NewsServiceProtocol {
    
    private init() {}
    
    static let shared = NewsService()
    
    func fetchNews(category:String, completion: @escaping (Result<NewsResponse,APIErrorResult>)->() ) {
        APIManager.shared.execute(endpoint: Endpoint.getNews(category:category), completion: completion)
    }
}
