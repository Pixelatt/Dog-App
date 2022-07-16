//
//  ContentView.swift
//  Dog App
//
//  Created by T Krobot on 16/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DogFactView()
                .tabItem{
                    Label("Dog Facts", systemImage: "lightbulb")
                }
             
            DogImageView()
                .tabItem {
                    Label("Image", systemImage: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
