//
//  SplashPresenter.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation
import RxSwift

class SplashPresenter {
    
    unowned let view: SplashViewProtocol
    //Dispose bag
    let disposeBag = DisposeBag()
    
    required init(view: SplashViewProtocol) {
        self.view = view
    }
    
    func getSportsInfo(){
        ApiClient.getSportsInfo()
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { response in
                
                self.view.onGetSportsInfoSuccess(data: response)
                
            }, onError: { error in
                self.view.onGetSportsInfoError()
                
            })
            .disposed(by: disposeBag)
    }


}
