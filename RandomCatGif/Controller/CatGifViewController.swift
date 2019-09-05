//
//  ViewController.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import UIKit

class CatGifViewController: UITableViewController {
    let dataSource = CatDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
//        let setName = Set(Constants.catNames)
//        print(setName)
        dataSource.dataChanged = { [weak self] in
            self?.tableView.reloadData()
            
        }
        
        let urlQuery = TheCatAPI().urlQuery()
        dataSource.fetch(urlQuery)
        tableView.dataSource = dataSource

    }


}

