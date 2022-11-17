//
//  SnapchatUserInterfaceApp.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

@main
struct SnapchatUserInterfaceApp: App {
    
    @StateObject var vm = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            //            CameraView()
            TabView{
                
                MapContentView()
                    .tabItem {
                        Image(systemName: "map" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(1)
                
                ContentView()
                    .tabItem {
                        Image(systemName: "bubble.right")
                    }
                
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                
                    .tag(2)
                    
                
                CameraView()
                    .tabItem {
                        Image(systemName: "camera" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .environmentObject(vm)
                    .tag(3)
                
                
                Text("stories")
                    .tabItem {
                        Image(systemName: "person.2")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(4)
                
                Text("spotlight")
                    .tabItem {
                        Image(systemName: "play")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(5)
            }
            //                .environmentObject(vm)
            //                .onAppear {
            //                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            //                }
        }
    }
}



//        .toolbar(.visible, for: .tabBar)
//
//        .toolbarBackground(
//            Color.black
//            for: .tabBar)
//
