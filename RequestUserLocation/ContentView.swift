//
//  ContentView.swift
//  RequestUserLocation
//
//  Created by Lucas Newlands on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var locationManager = LocationManager.shared
    
    var body: some View {
        Group {
            if locationManager.userLocation == nil {
                LocationRequestView()
            } else if let location = locationManager.userLocation {
                Text("\(location)")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
