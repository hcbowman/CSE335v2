//
//  GameRecord.swift
//  GameRecord
//
//  Created by Hunter Bowman on 9/18/21.
//

import Foundation

struct GameRecord {
    
    enum GameType {
        case single
        case group
    }
    
    let name: String
    let type: GameType
    var series: String
    
    init(_ name: String,_ type: GameType,_ series: String) {
        self.name = name
        self.type = type
        self.series = series
    }
    
}
