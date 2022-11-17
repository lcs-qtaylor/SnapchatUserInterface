//
//  MapContentView.swift
//  SnapchatUserInterface
//
//  Created by Quin Taylor on 2022-11-17.
//

import SwiftUI
import MapKit

struct MapContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.4402554, longitude: -78.2667951), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

       var body: some View {
           Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
               .frame(width: 400, height: 850)
       }
   }
struct MapContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapContentView()
    }
}
