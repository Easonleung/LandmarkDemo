//
//  LandmarkDetail.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/15.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        /* Note:
            $0.id 这里0表示传递给Swift闭包的第一个参数,是Swift语言的语法糖。
            Swift会自动为内联闭包提供速记参数名称,可使用0,1,2等名称来引用闭包参数的值。
         */
    }
    
    var body: some View {
        ScrollView {
            
            // Loading MapView from MapView.swift
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            /* Note:
                调用 MapView 的时候，传递了 landmark.locationCoordinate 这个参数
                而这个参数，则来自于 LandMarkDetail 被调用时的 landmark 传参
             */
            
            
            // Loading CircleImageView from CircleImage.swift
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.red)
                        .bold()
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                // 分割线
                Divider()

                Text("About \(landmark.name)\n")
                    .font(.title2)
                Text(landmark.description)
                    .font(.subheadline)
                }
                .padding()

                Spacer()
            }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    
    static let modelData = ModelData()
    static var previews: some View {
        
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
        
        /* Note:
            由于原本直接使用的 landmark[]，在 ListModel 中被封装到了 ModelData: ObsevrableObject 中，所以在这里的使用就改为了 ModelData().landmarks[]
         */
    }
}
