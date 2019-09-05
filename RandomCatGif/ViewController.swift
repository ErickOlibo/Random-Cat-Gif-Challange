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
        
         print(TheCatAPI().urlQuery())
        dataSource.fetch(TheCatAPI().urlQuery())
    
        // Do any additional setup after loading the view.
    }


}

