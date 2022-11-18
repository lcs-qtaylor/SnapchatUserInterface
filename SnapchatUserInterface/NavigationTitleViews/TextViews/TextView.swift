//
//  TextView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct TextView: View {
    let item: chatData
    var body: some View {
        chatview(textBoxes: item.textBoxes)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(item: listOfItem.first!)
    }
}
