//
//  LandmarkRow.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/15.
//

import SwiftUI

struct LandmarkRow: View {
    
    // Define a variable type of Landmark
    var landmark: Landmark
    
    var body: some View {
        HStack {
            
            Text(" " + String(landmark.id))
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

/* Note:
    首先定义一个 Landmark 的变量 landmark，这个变量可以接受这个view被调用时的参数传递。
    Image(systemName: "star.fill") 是通过 systeName 调用了系统自带的图标
 */

struct LandmarkRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    /* Note:
        原本的 landmark 在 ListModel 中被封装到了 ModelData: ObservableObject 中，因此这里需要先进行引用
     */
    
    
    
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

