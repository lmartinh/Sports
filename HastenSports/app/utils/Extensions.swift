//
//  Extensions.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import UIKit

// *************** UIImageView ***************
extension UIImageView {
    
    
    public func imageFromServerURL(urlString: String) {
        //self.image = UIImage(named: "ic_empty_chargy")
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                if image != nil{
                    self.image = image
                }
                
            })
            
        }).resume()
    }
}
