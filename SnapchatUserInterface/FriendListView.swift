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
    let destination: UIView
        
    var body: some View {
       
        NavigationLink(destination:{
            chatview()
        }, label: {
            
            HStack{
                Circle()
                    .foregroundColor(Bitmoji)
                    .frame(width: 30)
                    .padding()
                Text(name)
                Spacer()
                Text("00:00.00")
            }
        })
    }
}

struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView(name: "quinlan",
                       Bitmoji:.red,
                       destination: UIView())
    }
}
