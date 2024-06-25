//
//  Landmark.swift
//  Landmarks
//
//  Created by eric hayes on 6/24/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable {
  var id: String
  var name: String
  var park: String
  var state: String
  var description: String
  
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  
  var coordinates: Coordinates
  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: coordinates.latitude,
                           longitude: coordinates.longitude)
  }
  
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
}
