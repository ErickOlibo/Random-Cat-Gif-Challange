//
//  JSONDecoder-Extension.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import Foundation

extension JSONDecoder {
    func decodeJSON<T: Decodable>(_ type: T.Type, fromURL url: URL, completion: @escaping (T) -> Void) {
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                let fetchedGifs = try self.decode(type, from:
                    data)
                
                DispatchQueue.main.async {
                    completion(fetchedGifs)
                }
            } catch {
                print(error.localizedDescription)
            }
        }
        
    }
}
