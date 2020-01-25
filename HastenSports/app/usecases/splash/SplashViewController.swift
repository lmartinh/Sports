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
    private var data: Array<Sport>? = nil

    @IBOutlet weak var animationView: AnimationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //init presenter
        presenter = SplashPresenter(view: self)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "from_splash_to_sports" {
            if let destinationVC = segue.destination as? SportsViewController {
                destinationVC.data = self.data
            }
        }
    }
        
        

}


extension SplashViewController: SplashViewProtocol{
    
    func onGetSportsInfoSuccess(data: Array<Sport>) {
        self.data = data
        self.performSegue(withIdentifier: "from_splash_to_sports", sender: self)
        self.dismiss(animated: false)
    }
    
    func onGetSportsInfoError() {
        
    }
    


}
