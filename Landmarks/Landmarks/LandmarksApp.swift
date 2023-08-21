//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Fairooz Rahman on 20/8/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
