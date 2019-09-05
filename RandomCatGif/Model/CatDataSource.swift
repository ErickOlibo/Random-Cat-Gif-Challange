//
//  CatsDataSource.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import UIKit

class CatDataSource: NSObject {
    
    var cats = [Cat]()
    
    func fetch(_ urlString: String) {
        let decoder = JSONDecoder()
        let url = URL(string: urlString)! // Should always work because the link is hardcoded
        decoder.dateDecodingStrategy = .iso8601
        decoder.decodeJSON([Cat].self, fromURL: url) { cats in
            self.cats = cats
            for cat in cats {
                print("id: \(cat.id)")
            }
        }
        
    }
}
