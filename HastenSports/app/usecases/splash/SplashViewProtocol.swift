//
//  SplashViewProtocol.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation

protocol SplashViewProtocol: class {
    func onGetSportsInfoSuccess(data: Array<Sport>)
    func onGetSportsInfoError()

}
