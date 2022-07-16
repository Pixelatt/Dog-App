//
//  DogFactView.swift
//  Dog App
//
//  Created by T Krobot on 16/7/22.
//

import SwiftUI

struct DogFactView: View {
    
    @ObservedObject var dogFactManager = DogFactManager()
    
    var body: some View {
        VStack {
            if let fact = dogFactManager.fact {
                Text(fact.fact)
                    .padding()
            } else {
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
        .onAppear {
            dogFactManager.getDogFact()
        }
    }
}

struct DogFactView_Previews: PreviewProvider {
    static var previews: some View {
        DogFactView()
    }
}
