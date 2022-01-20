//
//  ViewController.swift
//  Condenast-NewsApp
//
//  Created by shree thaanu on 19/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newsListTable: UITableView!
    private var articleListVM: ArticleListViewModel!
    var articleData: [Article] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=0cf790498275413a9247f8b94b3843fd")!
        Webservice().getArticles(url: url) { articles in
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles)
                DispatchQueue.main.async {
                    self.newsListTable.reloadData()
                }
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

     func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as! ArticleTableViewCell
        cell.articleTitle.text = articleListVM.articles[indexPath.row].title
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
}

