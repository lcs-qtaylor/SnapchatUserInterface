//
//  chatview.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-16.
//

import SwiftUI

struct chatview: View {
    let textBoxes: String
    var body: some View {
        VStack{
            Text(textBoxes)
        }
    }
}

struct chatview_Previews: PreviewProvider {
    static var previews: some View {
        chatview(textBoxes: "1")
    }
}
