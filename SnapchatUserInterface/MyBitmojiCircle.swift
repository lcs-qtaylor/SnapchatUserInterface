//
//  MyBitmojiCircle.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct MyBitmojiCircle: View {
    let buttonColor: Color
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(buttonColor)
                .frame(width: 50)
    }
}

    struct MyBitmojiCircle_Previews: PreviewProvider {
        static var previews: some View {
            MyBitmojiCircle(buttonColor:.gray)
        }
    }
}
