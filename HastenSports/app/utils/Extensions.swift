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

// *************** UIView ***************
extension UIView {
    
    func setCardView(){
        self.layer.cornerRadius = 5.0
        self.layer.borderColor  =  UIColor.clear.cgColor
        self.layer.borderWidth = 5.0
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor =  UIColor.lightGray.cgColor
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width:5, height: 5)
        self.layer.masksToBounds = true
    }
}

