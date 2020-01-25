//
//  SplashViewController.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import UIKit
import Lottie

class SplashViewController:  UIViewController {
    
    private var presenter : SplashPresenter? = nil

    @IBOutlet weak var animationView: AnimationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //init presenter
        presenter = SplashPresenter(view: self)
        
        self.animationView.loopMode = .loop
        self.animationView.play()
        
        
        
        
    }
        
        

}


extension SplashViewController: SplashViewProtocol{


}
