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
        
        refreshControl?.addTarget(self, action: #selector(refresh), for: .valueChanged)
        setupRefreshController()
        loadDataSource()

    }
    
    
    // MARK: - RefreshController Setup
    private func setupRefreshController() {
        
        refreshControl?.tintColor = .red
        let attributes = [NSAttributedString.Key.foregroundColor : UIColor.red]
        refreshControl?.attributedTitle = NSAttributedString(string: "Fetching more Cats...", attributes: attributes)
    }
    
    
    
    // MARK: - DataSource loading
    private func loadDataSource() {
        let urlQuery = TheCatAPI().urlQuery()
        dataSource.fetch(urlQuery)
        tableView.dataSource = dataSource
        dataSource.dataChanged = { [weak self] in
            self?.tableView.reloadData()
        }
    }
    
    
    // MARK: - Refresh
    @objc private func refresh() {
        loadDataSource()
        refreshControl?.endRefreshing()
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

