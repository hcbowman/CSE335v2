//
//  GameDictionary.swift
//  GameDictionary
//
//  Created by Hunter Bowman on 9/19/21.
//

import Foundation

class GameDictionary {
    
    var games: [String:GameRecord] = [String:GameRecord]()
    
    init() {
        
    }
    
    func insert(game record: GameRecord) {
        self.games[record.name] = record
    }
    
    func delete(game name: String) -> Bool {
        if self.games.keys.contains(name) {
            self.games[name] = nil
            return true
        } else {
            return false
        }
        
    }
    
    func search(game name: String) -> GameRecord? {
        if self.games.keys.contains(name) {
            return self.games[name]!
        } else {
            return nil
        }
    }
    
    
}
