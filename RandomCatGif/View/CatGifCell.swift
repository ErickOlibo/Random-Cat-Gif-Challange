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
    var url = String() {
        didSet {
            loadGifAnimation()
        }
    }

    // MARK: - Outlets
    /// - Warning: Need to look up the way to display GIF safely
    /// is an ImageView the right way?
    
    @IBOutlet weak var catGif: CustomAnimatedImageView!
    @IBOutlet weak var catName: UILabel! // Not defined yet
    @IBOutlet weak var catID: UILabel!
    
    
    private func loadGifAnimation() {
        guard let catURL = URL(string: url) else {
            return
        }
        catGif.loadGifUsing(catURL)
        
//        DispatchQueue.global().async {
//            do {
//                let data = try Data(contentsOf: catURL)
//
//
//
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
//
//
//        catGif.image = UIImage.gif(url: url)
    }
    
    

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
