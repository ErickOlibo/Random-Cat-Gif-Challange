//
//  ViewController.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let dataSource = CatDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//         print(TheCatAPI().urlQuery())
//        dataSource.fetch(TheCatAPI().urlQuery())
        
        let loremAPI = LoripsumAPI()
        let urlString = loremAPI.urlQuery(quantity: 5, textLength: .medium)
        loremAPI.fetch(urlString) { contents in
            for text in contents {
                print("-> \(text)")
            }
        }
    
        // Do any additional setup after loading the view.
    }


}

