//
//  DetailView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct DetailView: View {
    let item: chatData
    var body: some View {
        FriendListView(name: item.name, Bitmoji: item.Bitmoji, time: item.time, square: item.square)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: listOfItem.first!)
    }
}
