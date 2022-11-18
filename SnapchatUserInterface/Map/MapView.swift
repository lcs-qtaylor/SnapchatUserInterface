//
//  MapView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-17.
//

import SwiftUI

struct MapView: View {
    let textBoxes: String
    var body: some View {
        VStack{
            Text(textBoxes)

        }
    }
}

struct Mapview_Previews: PreviewProvider {
    static var previews: some View {
//        MapView(textBoxes: "1")
        MapContentView()
    }
}

