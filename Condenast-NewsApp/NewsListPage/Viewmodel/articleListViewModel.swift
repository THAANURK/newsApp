//
//  articleListViewModel.swift
//  Condenast-NewsApp
//
//  Created by shree thaanu on 20/01/22.
//

import Foundation

struct ArticleListViewModel {
    
    let articles: [Article]
    
    
    var numberOfSections: Int {
        return 1
    }

    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }

    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}


