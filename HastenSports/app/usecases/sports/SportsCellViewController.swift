//
//  SportsCellViewController.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import UIKit

class SportsCellViewController: UICollectionViewCell{
    
    var delegate: SportsCellViewDelegate? = nil
    var position = 0
    
    @IBOutlet weak var sportsButton: UIButton!
    
    @IBAction func onSportButtonSelected(_ sender: Any) {
        
        self.delegate?.sportSelected(index: position)
        
    }
}

protocol SportsCellViewDelegate {
    func sportSelected(index: Int)
}




