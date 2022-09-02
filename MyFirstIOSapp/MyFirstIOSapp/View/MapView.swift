//
//  MapView.swift
//  MyFirstIOSapp
//
//  Created by Akshay Prabhakant on 14/08/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868),
        span: MKCoordinateSpan(
            latitudeDelta: 0.2,
            longitudeDelta: 0.2)) // init(wrappedValue: MKCoordinateRegion(...)) was called
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
