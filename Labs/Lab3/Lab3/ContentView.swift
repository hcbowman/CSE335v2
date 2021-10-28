//
//  ContentView.swift
//  Lab3
//
//  Created by Hunter Bowman on 9/18/21.
//

import SwiftUI

struct ContentView: View {
    
    //let initialRecord = GameRecord("overwatch", .group, "somthing")
    //let gDictionary: [String:GameRecord] = [String:GameRecord]()
    
    //var games: GameDictionary = GameDictionary(dictionary: gDictionary)
    
    @State private var gameName = ""
    @State private var gameType = ""
    @State private var upcomingSeries = ""
    
    @State private var name = ""
    @State private var type = ""
    @State private var series = ""
    
    
    
    
    var body: some View {
        VStack {
            
            HStack {
                Button("a", action: deleteRecord)
                    .padding()
                Spacer()
                Text("Favorite Games")
                Spacer()
                Button("s", action: addRecord)
                    .padding()
            }
            
            VStack {
                HStack {
                    Text("Game Name")
                    TextField("", text: $gameName)
                }
                HStack {
                    Text("Game Type")
                    TextField("", text: $gameType)
                }
                HStack {
                    Text("Upcomming Series")
                    TextField("", text: $upcomingSeries)
                }
            }
            .padding()
            
            VStack {
                HStack {
                    Text("Name")
                    TextField("placeholder", text: $name)
                }
                HStack {
                    Text("Game Type")
                    TextField("placeholder", text: $type)
                }
                HStack {
                    Text("Upcomming Series")
                    TextField("pl", text: $series)
                }
            }
            .padding()
        }
        
        
        
    }
    
    func addRecord() {
        
    }
    
    func deleteRecord() {
        
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
