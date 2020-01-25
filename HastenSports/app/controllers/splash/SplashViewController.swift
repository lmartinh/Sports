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

class SplashViewController:  BaseViewController {
    
    private var presenter : SplashPresenter? = nil

    @IBOutlet weak var animationView: AnimationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //init presenter
        presenter = SplashPresenter(view: self)
        
        self.animationView.loopMode = .loop
        self.animationView.play()
        
        if(!Utils.isConnectedToNetwork()){
            self.stopLottie()
            self.showAlert(description: NSLocalizedString("internet_error", comment: ""), isCancelVisible: false)
        }else{
            self.presenter?.getSportsInfo()
        }
        
        
        
        
        
        
    }
    
    func stopLottie(){
        self.animationView.stop()
        self.animationView.isHidden = true
        self.animationView.removeFromSuperview()
        
    }
    
    func finishProcess(){
        exit(0);
    }
        
        

}


extension SplashViewController: SplashViewProtocol{
    
    func onGetSportsInfoSuccess(data: Array<Sport>) {
        
    }
    
    func onGetSportsInfoError() {
        
    }
    


}
