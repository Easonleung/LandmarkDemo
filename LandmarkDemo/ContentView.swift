//
//  ContentView.swift
//  LMsChoreography
//
//  Created by Eason Leung on 2021/3/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        LandmarkList()
        //Text("Hello, Eason")
        /*
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("LesMills Training")
        }
 */
    }
}


struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
        
        
        /* Note：
            在 ViewName_Previews 结构中，可以按照自己的需要展示所需预览的 View
            这个预览结构，是用于开发过程中的预览结果使用，因此在这里进行的代码调整，
            不会影响这个代码实际的代码结构或者输出
        */
    }
}
