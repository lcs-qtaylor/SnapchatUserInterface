//
//  SnapchatUserInterfaceApp.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//
import Firebase
import SwiftUI

@main
struct SnapchatUserInterfaceApp: App {
    @StateObject var vm = ViewModel()
    
@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
   
    var body: some Scene {
        WindowGroup {
            LoginView()
//            if userIsLoggedIn = false {LoginView()
//            } else { ContentView() }
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
            
        
        }
    }
}

class AppDelegate: NSObject,UIApplicationDelegate{
         
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
             
        FirebaseApp.configure()
        return true
    }
}


