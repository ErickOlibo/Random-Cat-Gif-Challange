//
//  LoripsumAPI.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import Foundation

// MARK: - Properties
private let address = "https://loripsum.net/api/"

public enum LoripSize: String, CaseIterable {
    case short, medium, long, verylong

}

public class LoripsumAPI {
    
    func urlQuery(quantity: Int = 1, textLength: LoripSize = .medium) -> String {
        return "\(address)/\(quantity)/\(textLength.rawValue)/plaintext"
    }
    
    func fetch(_ urlString: String, completion: @escaping ([String]) -> Void){
        let url = URL(string: urlString)!
        
        DispatchQueue.global().async {
            do {
                let contents = try String(contentsOf: url)
                //print(contents)
                
                
                DispatchQueue.main.async {
                    // ** From Split to String.Element to String ** //
                    let lorems = contents.split { $0.isNewline }.map { String($0) }
                    completion(lorems)
                }
                
            } catch {
                print(error.localizedDescription)
            }
        }
        
    }
}
