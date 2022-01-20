//
//  ArticleTableViewCell.swift
//  Condenast-NewsApp
//
//  Created by shree thaanu on 20/01/22.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var publishedTime: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
