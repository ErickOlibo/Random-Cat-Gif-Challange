//
//  CatDetailViewController.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import UIKit

class CatDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var catGif: CustomAnimatedImageView!
    @IBOutlet weak var catLorem: UILabel!
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    
    // MARK: - Properties
    var cat: Cat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGif()
        setupLorem()
        
    }
    
    
    private func setupLorem() {
        let loremAPI = LoripsumAPI()
        let urlString = loremAPI.urlQuery()
        
        LoripsumAPI().fetch(urlString) { contents in
            if contents.count > 0 {
                self.catLorem.text = contents.first!
            }
        }
    }
    
    
    private func setupGif() {
        guard let cat = cat else { return }
        imageHeight.constant = CGFloat(cat.height)
        if let url = URL(string: cat.url) {
            catGif.loadGifUsing(url)
        }
        
    }
    



}
