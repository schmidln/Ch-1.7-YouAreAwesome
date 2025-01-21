//
//  ContentView.swift
//  Ch 1.5 Conditionals+Constant+Scope
//
//  Created by Lucas Schmidt on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName = ""
    @State private var phrase = ""
    var body: some View {
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 30))
                .shadow(radius: 30)
            Text(phrase)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Press Me!") {
                
                let message0 = "You are Aweseome!"
                let message1 = "You are Great!"
                let imageName0 = "image0"
                let imageName1 = "image1"
                
                phrase = (phrase == message0 ? message1 : message0)
                imageName = (imageName == imageName0 ? imageName1 : imageName0)
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
