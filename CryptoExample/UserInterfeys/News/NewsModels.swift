//
//  NewsModels.swift
//  CryptoExample
//
//  Created by Rahimjon Abdullayev on 28/01/22.
//
enum NewsModels {
    
    struct DisplayedNews {
        let title: String
        let body: String
        let source: String
    }
    
    enum FetchNews {
        struct Request {
            let category: String
        }
        struct Response {
            let news: [News]?
            let error: APIErrorResult?
        }
        struct ViewModel {
            let displayedNews: [DisplayedNews]?
            let error: APIErrorResult?
        }
    }
}
