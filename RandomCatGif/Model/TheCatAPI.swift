//
//  TheCatAPI.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import Foundation

// Properties
private let apiKey = "a9f502f7-73c8-4284-a5ad-37efdc9dc2f7"
private let userID = "jhi37r"
private let address = "https://api.thecatapi.com/v1/images/search?"


public class TheCatAPI {
    func urlQuery(quantity: Int = 100) -> String {
        return "\(address)format=JSON&mime_types=gif&limit=\(quantity)&apiKey=\(apiKey)"
    }
}

