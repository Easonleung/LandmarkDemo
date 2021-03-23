//
//  CircleImage.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/15.
//

import SwiftUI

struct CircleImage: View {
   
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("icybay"))
    }
}
