//
//  CatGifCellTableViewCell.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import UIKit

class CatGifCell: UITableViewCell {


    // MARK: - Proprieties
    /// - Warning: Need to look up the way to display GIF safely
    /// is an ImageView the right way?
    @IBOutlet weak var catGif: UIImageView!
    @IBOutlet weak var catName: UILabel! // Not defined yet
    @IBOutlet weak var catID: UILabel!
    
    
    

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
