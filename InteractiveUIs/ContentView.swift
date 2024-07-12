//
//  ContentView.swift
//  InteractiveUIs
//
//  Created by Kayla Tabalon on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "What is your name?"
    //Stores the text that the user types in the TextField; is wrapped (@State) so that the input text can have an additional behavior/will update the view when that state (name) is changed+can show on the next page (Hello "name"!):
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text(textTitle)
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .padding()
            
            Button("Submit Name") {
                //print(name)
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
    }
}

#Preview {
    ContentView()
}
