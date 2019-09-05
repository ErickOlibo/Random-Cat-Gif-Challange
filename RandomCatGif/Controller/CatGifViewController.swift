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
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "ToCatDetailVC") {
            guard let catCell = sender as? CatGifCell else { return }
            guard let destination = segue.destination as? CatDetailViewController else { return }
            guard let cat = catCell.cat else { return }
            destination.cat = cat
        }
        
        
    }


}

