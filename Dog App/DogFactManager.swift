//
//  DogFactManager.swift
//  Dog App
//
//  Created by T Krobot on 16/7/22.
//

import Foundation
import SwiftUI

class DogFactManager: ObservableObject {
    
    @Published var fact: DogFact?
    
    func getDogFact() {
        let apiURL = URL(string:"https://bestlifeonline.com/dog-facts/")!
        let request = URLRequest(url: apiURL)
        
        fact = nil
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                DispatchQueue.main.async {
                    self.fact = try? decoder.decode(DogFact.self, from: data)
                }
            }
        }.resume()
    }
}
