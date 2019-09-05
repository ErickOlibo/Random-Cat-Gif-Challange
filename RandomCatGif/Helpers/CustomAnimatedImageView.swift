//
//  CustomAnimatedImageView.swift
//  RandomCatGif
//
//  Created by Erick Olibo on 05/09/2019.
//  Copyright © 2019 DEFKUT Creations OU. All rights reserved.
//

import UIKit

private let imageCache = NSCache<AnyObject, AnyObject>()

class CustomAnimatedImageView: UIImageView {
    
    var imageURL: URL?
    
    public func loadGifUsing(_ url: URL) {
        imageURL = url
        
        image = #imageLiteral(resourceName: "cat_img")
        
        if let imageFromCache = imageCache.object(forKey: url as AnyObject) as? UIImage {
            self.image = imageFromCache
        }
        
        URLSession.shared.dataTask(with: url) { (data, reponses, error) in
            if error != nil {
                print(error?.localizedDescription ?? "Error fetching image from server.")
                return
            }
            
            let loadedGif = UIImage.gif(data: data!)
            DispatchQueue.main.async {
                if self.imageURL == url {
                    self.image = loadedGif
                }
                imageCache.setObject(loadedGif!, forKey: url as AnyObject)
            }
        }.resume()
        
    }
    
    
}
