//
//  ContentView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            
            ScrollView{
                
                List{
                    
                    Group {
                        
                        
                        
                        FriendListView(name: "ben", Bitmoji: .red, destination: chatview(), time: "h", square:"square.fill" )
                        
                        FriendListView(name: "hether", Bitmoji: .green, destination: secondview(), time: "g", square: "square.fill")
                        
                        FriendListView(name: "bob", Bitmoji: .pink, destination: chatview(), time: "h", square: "square.fill")
                        
                        FriendListView(name: "bill", Bitmoji: .yellow, destination: chatview(), time: "m", square: "square.fill")
                        
                        FriendListView(name: "maggy", Bitmoji: .blue, destination: chatview(), time: "q", square: "square.fill")
                        
                        FriendListView(name: "jack", Bitmoji: .black, destination: chatview(), time: "p", square: "square.fill")
                        
                    
                        
                        
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    
                    .listStyle(.plain)
                }
                .padding()
                .frame(width: 460.0, height: 710.0)
                .padding()
                
                .background(Color.yellow)
            }.navigationBarTitle("Chat",displayMode: .inline)
            
        }
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            
            TabView{
                
                Group{
                    
                    Text("map")
                        .tabItem {
                            Image(systemName: "map" )
                        }
                    
                        .tag(1)
                    
                    ContentView()
                        .tabItem {
                            Image(systemName: "bubble.right")
                        }
                    
                        .tag(2)
                    
                    Text("camera")
                        .tabItem {
                            Image(systemName: "camera" )
                        }
                    
                        .tag(3)
                    
                    Text("stories")
                        .tabItem {
                            Image(systemName: "person.2")
                        }
                    
                        .tag(4)
                    
                    Text("spotlight")
                        .tabItem {
                            Image(systemName: "play")
                        }
                    
                        .tag(5)
                    
                }
                .toolbar(.visible, for: .tabBar)
                
                .toolbarBackground(
                    Color.black,
                    for: .tabBar)
            }
        }
    }
}
