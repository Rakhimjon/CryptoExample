//
//  TopListService.swift
//  CryptoEx
//
//  Created by Rahimjon Abdullayev on 28/01/22.
//

protocol TopListServiceProtocol {
    func fetchTopList(completion: @escaping (Result<TopListResponse,APIErrorResult>)->() )
}

struct TopListService: TopListServiceProtocol {
    
    private init() {}
    
    static let shared = TopListService()
    
    func fetchTopList(completion: @escaping (Result<TopListResponse,APIErrorResult>)->() ) {
        APIManager.shared.execute(endpoint: Endpoint.getTopList(limit:"50",currency: "USD"),completion: completion)
    }
}
