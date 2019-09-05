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
    
    // MARK: - Properties
    var cat: Cat?
    var testString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("URL: \(cat?.url ?? "No url")")
        
        
        // Do any additional setup after loading the view.
    }
    



}
