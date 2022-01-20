//
//  ArticleViewModel.swift
//  Condenast-NewsApp
//
//  Created by shree thaanu on 20/01/22.
//

import Foundation


struct ArticleViewModel {

    private let article: Article
    init(_ article: Article) {
        self.article = article
    }

    var title: String {
        return self.article.title
    }

    var description: String {
        return self.article.description
    }

}
