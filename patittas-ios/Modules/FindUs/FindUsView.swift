//
//  FindUsView.swift
//  patittas-ios
//
//  Created by Victor Castro on 18/03/23.
//

import SwiftUI
import MapKit

struct FindUsView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region)
                .frame(width: .infinity, height: .infinity)
        }.navigationTitle("Encuentranos")
    }
}

struct FindUsView_Previews: PreviewProvider {
    static var previews: some View {
        FindUsView()
    }
}
