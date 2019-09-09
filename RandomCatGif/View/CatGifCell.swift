//
//  CatGifCellTableViewCell.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import UIKit

class CatGifCell: UITableViewCell {

    // MARK: - Properties
    var cat: Cat? {
        didSet {
            setupCell()
            print("CAT was set")
        }
    }
    var url = String() {
        didSet {
            loadGifAnimation()
        }
    }

    // MARK: - Outlets
    
    @IBOutlet weak var catGif: CustomAnimatedImageView!
    @IBOutlet weak var catName: UILabel! // Not defined yet
    @IBOutlet weak var catID: UILabel!
    
    
    // Private Methods
    private func setupCell() {
        guard let cat = cat else { return }
        guard let catURL = URL(string: cat.url) else { return }
        catGif.loadGifUsing(catURL)
        catName.text = cat.name
        catID.text = cat.id
        
    }
    
    private func loadGifAnimation() {
        guard let catURL = URL(string: url) else {
            return
        }
        catGif.loadGifUsing(catURL)

    }
    


}
