//
//  MapView.swift
//  EpameinondasZymvrakakis
//
//  Created by Angelos Staboulis on 10/1/25.
//

import SwiftUI
import MapKit
struct MapView: View {
    var body: some View {
        VStack{
                         Map{
                             Marker("Γενέτηρα Επαμεινώνδα Ζυμβρακάκη", coordinate: CLLocationCoordinate2D(latitude: 37.567317, longitude:22.801553))
                         }
        }
    }
}

#Preview {
    MapView()
}
