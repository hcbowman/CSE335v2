//
//  ContentView.swift
//  Lab2SwiftUI
//
//  Created by Hunter Bowman on 9/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var user = Person()
    @State var weight = ""
    @State var inputWeight: Float = 0.0
    @State var presentingModal = false
    
    var body: some View {
        
        VStack(alignment: .center) {
            VStack(alignment: .center){
                Text("Welcome to Space Walk App")
                    .padding()
                Text("You are on Earth now")
                    .padding()
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            //TextField("Enter your weight:", text: $weight)
            //.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //.accentColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
            //.disableAutocorrection(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            //.disableAutocorrection(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            //.foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            //.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            HStack {
                Text("Enter weight")
                NumberTextField(floatValue: $inputWeight)
                    .frame(width: 200.0, height: 50.0)
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/11.0/*@END_MENU_TOKEN@*/)
                Button("Enter") {
                    hideKeyboard()
                    #if DEBUG
                    print("entered weight: \(inputWeight)")
                    print("user wight: \(user.weight)")
                    #endif
                }
            }
            
            
            
            
            Image("Earth")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250, alignment: .topLeading)
                .border(.blue)
                .clipped()
            
            
            if #available(iOS 15.0, *) {
                Button("Go to Moon") {self.presentingModal = true}
                .sheet(isPresented: $presentingModal) { PlanetView(presentedAsModal: self.$presentingModal, planet: "Moon") }
                .buttonStyle(.bordered)
            } else {
                Button("Go to Moon") {self.presentingModal = true}
                .buttonStyle(.automatic)
            }
            
        }
        .environmentObject(user)
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        Spacer()
        
    }
    
    func loadWeight() {
        //guard let inputWeight = inputWeight else { return }
        //image = Image(uiImage: inputImage)
        user.weight = inputWeight
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
