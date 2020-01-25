//
//  Sport.swift
//  HastenSports
//
//  Created by Leticia Martín on 25/01/2020.
//  Copyright © 2020 Leticia Martín. All rights reserved.
//

import Foundation

struct Sport: Codable {
    var players: Array<Player>
    var type: String
    var title: String
}

