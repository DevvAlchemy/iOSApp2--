//
//  ScavengerHuntItem.swift
//  iOSApp2
//
//  Created by Royal K on 2025-02-06.
//
import SwiftUI

struct ScavengerHuntItem: Identifiable {
    let id = UUID()
    let clue: String
    let businessName: String
    var isFound: Bool = false
}

