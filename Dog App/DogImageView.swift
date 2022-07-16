//
//  DogImageView.swift
//  Dog App
//
//  Created by T Krobot on 16/7/22.
//

import SwiftUI

struct DogImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://bestlifeonline.com/dog-facts/")!) { image in image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
                .progressViewStyle(.circular)
        }
    }
}

struct DogImageView_Previews: PreviewProvider {
    static var previews: some View {
        DogImageView()
    }
}
