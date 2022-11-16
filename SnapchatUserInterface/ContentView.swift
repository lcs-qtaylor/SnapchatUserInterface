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
                Text("HELLo")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.black)
                    .padding(.top,1)
                    .frame(width: 362.0, height: 670.0)
                    .padding()
                
                
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.gray)
                    .padding(.top,30)
            )
        }
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
            
            VStack{
               
            }
        }
    }
}

