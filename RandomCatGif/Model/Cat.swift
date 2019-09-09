//
//  Cat.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import Foundation

struct Cat: Codable {
    
    let breeds: [Breed]
    let height: Int
    let width: Int
    let id: String
    let url: String
    let categories: [Category]?
    let name: String = {
        return Constants.catNames.randomElement() ?? "UnNamed"
    }()
}
