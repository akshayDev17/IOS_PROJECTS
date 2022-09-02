//
//  Landmark.swift
//  MyFirstIOSapp
//
//  Created by Akshay Prabhakant on 02/09/22.
//
import SwiftUI
import MapKit

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var ImageName: String // will be accessible only inside this structure
    var image: Image{ // declare image as a computed property of type Image(a struct conforming to View)
        Image(ImageName) // return this as the computed value
    }
    private var coordinates: Coordinates // nested structures
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
