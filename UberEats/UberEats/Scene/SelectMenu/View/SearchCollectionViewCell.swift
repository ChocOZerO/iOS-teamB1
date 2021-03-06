//
//  SearchCollectionViewCell.swift
//  UberEats
//
//  Created by 이혜주 on 24/01/2019.
//  Copyright © 2019 team-b1. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!

    weak var searchBarDelegate: SearchBarDelegate?

    @IBAction func touchUpSearchButton(_ sender: Any) {
        searchBarDelegate?.showSeachBar()
    }

}
