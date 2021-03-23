//
//  FavoriteButton.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    /* Note:
        由于使用了绑定，因此在此视图内所做的更改会传播回数据源。
     */
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
            
            /* Note:
                如果 isSet 为 true，则显示黄色的已填充的星星，否则显示灰色的空心星
             */
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
