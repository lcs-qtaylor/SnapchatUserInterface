//
//  FriendListView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct FriendListView: View {
    let name: String
    let Bitmoji: String
    let time: String
    let square: String
    
    var body: some View{
        ZStack{
            NavigationLink(destination:{
                
            }, label: {
                
                HStack{
                    ZStack{
                        Circle()
                            .foregroundColor(.clear)
                            .frame(width: 35)
                            .padding()
                        
                        Image(Bitmoji)
                            
                    }
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
                    
                    ZStack{
                        Button(action: {
                            
                           
                            
                        }, label: {
                            
                            Image(systemName: "camera")
                            
                        })
                        
                    }
                    
                    
                    
                }
            })
        }
    }
}

struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView( name: "Quinlan",
                        Bitmoji: "person.fill",
                        time: "h",
                        square: "square.fill")
    }
}
