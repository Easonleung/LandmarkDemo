//
//  LandmarkList.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/15.
//

import SwiftUI

struct LandmarkList: View {
   
    @EnvironmentObject var modelData: ModelData
    /* Note:
        利用 @EnvironmentObject 将 modelData 声明为当前视图中的全局变量，并在它自己以及它的子视图都可以直接使用。
     */
    
    
    @State private var showFavoritesOnly = false
    /* Note:
        @State 有点像 Web 的 Ajax，当UI的值发生变化时，UI会自动实时更新，事实上使用了 @State 声明以后，该变量将会被全程监控，如果变量的值发生改变，将会马上更新
     */
    
    
    /*
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
           // landmark.name.contains("BodyCombat")
        }
    }
   */
    
    /* Note:
        建立变量 filteredLandmanks，用来存储筛选过后的数据
        筛选的条件就是 (!showFavoritesOnly || landmark.isFavorite)，返回当 showFavoriteOnly 为 false 或者 landmark.isFavorite 为 true 时的数据。也就是被加入收藏的数据。
     */
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
           
            /* 旧的 List 代码
            List(landmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("LesMills Training")
            */
            
            List {
                /* Note:
                    Toggle 按钮，改变的是 showFavoritesOnly 的值
                 */
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                /* Note:
                    循环输出 filteredLandmarks 的数据，因为此时 showFavoritesOnly 的值已经发生变化，因此 filteredLandmarks 的数据筛选条件已经生效。
                 */
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(
                        destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                }
            }
            .navigationTitle("LesMills Training")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
