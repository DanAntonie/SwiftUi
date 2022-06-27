//
//  CircleImage.swift
//  SwiftUIApp
//
//  Created by Dan Antonie on 23.06.2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("HappyFace")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
                 }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
