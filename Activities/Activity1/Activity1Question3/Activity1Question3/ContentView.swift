//
//  ContentView.swift
//  Activity1Question3
//
//  Created by Hunter Bowman on 8/29/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName: String
    @State var lastName: String
    @State var greeting: String  //"\(firstName) \(lastName) Welcome to CSE335"
    

    
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center) {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                Button("Greetings", action: {
                    greeting = "\(firstName) \(lastName) Welcome to CSE335"
                })
                    .padding(.vertical)
                    .buttonStyle(.automatic)
                Text("\(greeting)")
                
            }
            
            Spacer()
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(firstName: "", lastName: "", greeting: "")
    }
}
