//
//  House.swift
//  AirbnbInterface
//
//  Created by Francesca Pia Gargiulo on 15/11/23.
//

import Foundation
import SwiftUI

struct house: Identifiable {
    
    var id: UUID = UUID()
    
    var country: String
    var place: String
    var period: String
    var host: String
    var price: Int
    var image1: String = "air"
    var image2: String = "air2"
    var image3: String = "air"
    var vote: Float
    
    
}
