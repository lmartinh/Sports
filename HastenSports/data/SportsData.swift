//
//  SportsData.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation

struct SportsData: Codable {
    var sportsArray: Array<Sport>
}

struct Sport: Codable {
    var players: Array<Player>
    var type: String
    var title: String
}

struct Player: Codable {
    var image: String
    var surname: String
    var name: String

}
