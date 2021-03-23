//
//  ListModel.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/15.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
   @Published var landmarks: [Landmark] = DecodeJson("landmarkData.json")
}

/* Note:
    将原本定义为变量的 landmark，封装到 ObservableObject 类型 ModelData 里（landmark 通过 DecodeJson 方法从 Json 中获取数据）
    通过 @Published 声明将获得数据的 landmark 声明成为“发布者”
    所有这些操作，都来自于库 Combine，需要首先进行 Import
 */



