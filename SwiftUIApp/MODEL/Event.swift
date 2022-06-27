//
//  Event.swift
//  SwiftUIApp
//
//  Created by Dan Antonie on 24.06.2022.
//

import Foundation
struct Event: Codable, Identifiable {
    var id: String
    var date: String
    var name: String
    var location: String
}


