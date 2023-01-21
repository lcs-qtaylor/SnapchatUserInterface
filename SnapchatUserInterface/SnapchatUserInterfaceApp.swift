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
        }
    }
}

class AppDelegate: NSObject,UIApplicationDelegate{
         
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
             
        FirebaseApp.configure()
        return true
    }
}


