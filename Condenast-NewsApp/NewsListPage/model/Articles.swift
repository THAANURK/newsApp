//
//  Articles.swift
//  Condenast-NewsApp
//
//  Created by shree thaanu on 20/01/22.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
