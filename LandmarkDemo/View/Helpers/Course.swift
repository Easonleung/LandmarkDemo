//
//  Course.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/13.
//

import SwiftUI

struct Course: View {
    var courseImage = "pic02"
    var body: some View {
        VStack(alignment: .center, spacing: 2){
                
           Image(courseImage)
      
            Text("LesMilles Training")
                .bold()
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            HStack {
                Text("Training Choreography")
                    .italic()
                    .font(.subheadline)
                
                Text ("SYNC")
                    .italic()
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

/* Note:
    这个结构构造了一个上下层嵌套左右层的排版结构
    +- VStack -----------------------+
    | Image(courseImage)             |
    | Text("LesMills Training")      |
    | +- HStack -------------------+ |
    | | Text("T...") | Text("SYNC")| |
    | +----------------------------+ |
    +--------------------------------|
 */

struct Course_Previews: PreviewProvider {
    static var previews: some View {
        Course(courseImage: "pic03")
    }
}
