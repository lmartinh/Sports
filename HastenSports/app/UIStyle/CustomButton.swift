//
//  CustomButton.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.init(red: 183/255.0, green: 15/255.0, blue: 35/255.0, alpha: 1).cgColor
        self.layer.borderWidth = 1
        
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        //self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 0.3
        self.layer.shadowColor = UIColor.init(red: 192/255.0, green: 196/255.0, blue: 205/255.0, alpha: 1).cgColor
    }
    
}

