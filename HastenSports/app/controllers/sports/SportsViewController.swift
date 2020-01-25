//
//  SportsViewController.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import UIKit

final class SportsViewController: UICollectionViewController {
    
    private let reuseIdentifier = "SportCell"
    var data: Array<Sport>? = nil
    private var sportsData: [String] = []
    private let itemsPerRow: CGFloat = 2
    private let sectionInsets = UIEdgeInsets(top: 20.0,
                                             left: 20.0,
                                             bottom: 20.0,
                                             right: 20.0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let array = data{
            for item in array{
                self.sportsData.append(item.title)
            }
        }
        
        
    }
    
}

// MARK: - UICollectionViewDataSource
extension SportsViewController {
   
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.sportsData.count 
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SportsCellViewController
        cell.backgroundColor = .white
        cell.sportsButton.setTitle(sportsData[indexPath.row], for: .normal)
        
        return cell
    }
}