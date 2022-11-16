//
//  ContentView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color
        HStack {
            ZStack{
                MyBitmojiCircle(buttonColor:.gray)
            }
            Spacer()
            
            Image(systemName: "darkSearch")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            TabView {
                
                TabView(selection: Binding.constant(3)) {
                    
                    Text("map")
                        .tabItem {
                            Image(systemName: "map" )
                            
                        }
                        .tag(1)
                    ContentView()
                        .tabItem {
                            Image(systemName: "chat" )
                        }
                        .tag(2)
                    Text("camera")
                        .tabItem {
                            Image(systemName: "camera" )
                        }
                        .tag(3)
                    Text("stories")
                        .tabItem {
                            Image(systemName: "stories" )
                        }
                        .tag(4)
                    Text("spotlight")
                        .tabItem {
                            Image(systemName: "spotlight" )
                        }
                        .tag(5)
                    
                        .accentColor(.blue)
                        .preferredColorScheme(.dark)
                
            }
        }
    }
}
