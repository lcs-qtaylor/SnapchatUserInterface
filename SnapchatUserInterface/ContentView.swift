//
//  ContentView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 8) {
            ScrollView{
                
                List {
                    Group {
                        VStack{
                        FriendListView(name: "Freddy", Bitmoji: .blue, destination: UIView())
                        
                        FriendListView(name: "Bobby", Bitmoji: .yellow, destination: UIView())
                        
                        FriendListView(name: "Jeff", Bitmoji: .pink, destination: UIView())
                            
                            FriendListView(name: "tod", Bitmoji: .orange, destination: UIView())
                            
                            FriendListView(name: "mary", Bitmoji: .black, destination: UIView())
                            
                            FriendListView(name: "james", Bitmoji: .red, destination: UIView())
                            
                            
                      
                            
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    
                    .listStyle(.plain)
                }
                .padding()
                .frame(width: 460.0, height: 710.0)
                .padding()
                
                
            }
//            .background(
//                RoundedRectangle(cornerRadius: 10)
//                    .foregroundColor(.gray)
//                    .padding(.top,30)
//            )
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            VStack{
                
                TabView(selection: Binding.constant(3)) {
                    
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
                
                
            }
        }
    }
}
