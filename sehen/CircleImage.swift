//
//  SwiftUIView.swift
//  sehen
//
//  Created by Clark on 6/4/19.
//  Copyright © 2019 Clark. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: "titanic")
    }
}
#endif
