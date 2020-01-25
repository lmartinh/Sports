//
//  ChargyPointItemView.swift
//  ChargyIos
//
//  Created by Leticia Martín on 12/11/2019.
//  Copyright © 2019 Chargy. All rights reserved.
//

import Foundation
import UIKit

class PlayerItemView: UIView{

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var delegate: PlayerItemViewDelegate? = nil
    
    var player: Player? = nil {
        didSet {
            if player == nil {
                return
            }
            
            self.nameLabel.text = player?.name
            self.surnameLabel.text = player?.surname
           
            if let image = player?.image{
        
                if (!image.isEmpty){
                    self.image.imageFromServerURL(urlString: image)
                }else{
                    self.image.image = UIImage(named: "ic_empty_player")
                }
              
            }
            
            
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        loadFromNib()
    }
    
    private func loadFromNib() {
        
        Bundle.main.loadNibNamed("PlayerItemView", owner: self, options: nil)
        
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
}

protocol PlayerItemViewDelegate {
    
}
