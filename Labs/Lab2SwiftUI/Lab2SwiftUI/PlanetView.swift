//
//  JupiterView.swift
//  JupiterView
//
//  Created by Hunter Bowman on 9/12/21.
//

import SwiftUI

struct PlanetView: View {
    
    @Binding var presentedAsModal: Bool
    @EnvironmentObject var user: Person
    @State var planet = ""
    
    var body: some View {
        VStack {
            Text("You are on \(planet)")
            Image("Your weight on Earth is \(user.weight)")
            Text("Your weight on \(planet) is \((1/6)*user.weight)")

            //Text()
            //Text
            Button("Go back to Earth") { self.presentedAsModal = false }
            //Button
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
