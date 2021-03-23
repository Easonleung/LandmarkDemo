//
//  LandmarkDemoApp.swift
//  LandmarkDemo
//
//  Created by Eason Leung on 2021/3/11.
//

import SwiftUI

@main
struct LandmarkDemoApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}


