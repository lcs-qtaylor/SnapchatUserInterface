//
//  FriendListView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct FriendListView: View {
    let name: String
    let Bitmoji: Color
    let destination: any View
    let time: String
    let square: String
    
    var body: some View{
        
        NavigationLink(destination:{
            
        }, label: {
            
            HStack{
                Circle()
                    .foregroundColor(Bitmoji)
                    .frame(width: 30)
                    .padding()
                VStack{
                    Text(name)
                    .font(.custom("largeTitle", size: 20))
                    HStack{
                        Image(systemName: square)
                        Text("New Snap")
                        Text(":")
                        Text(time)
                        
                    }
                }
                Spacer()
                Image(systemName: "camera")
            }
        })
    }
}

struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView(name: "Quinlan",
                       Bitmoji:.red,
                       destination: View.self as! View,
                       time: "h",
                       square: "square.fill")
    }
}
