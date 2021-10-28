//
//  GameDictionary.swift
//  GameDictionary
//
//  Created by Hunter Bowman on 9/18/21.
//

import Foundation

class GameDictionary {
    
    var games: [String:GameRecord] = [String:GameRecord]()
    
    init() {
        
    }
    
    func insert(game record: GameRecord) {
        self.games[record.name] = record
    }
    
    func delete(game name: String) {
        self.games[name] = nil
    }
    
    func search(game name: String) -> GameRecord? {
        if self.games.keys.contains(name) {
            return self.games[name]!
        } else {
            return nil
        }
    }
    
    
}
