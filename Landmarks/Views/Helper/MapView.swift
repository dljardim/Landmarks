//
//  MapView.swift
//  Landmarks
//
//  Created by Damian Jardim on 2/14/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span:MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    var body: some View {
//        Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
