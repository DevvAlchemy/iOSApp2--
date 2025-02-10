
//
//  iOSApp2App.swift
//  iOSApp2
//
//  Created by Royal K on 2025-02-06.
//

import SwiftUI

@main
struct ScavengerHuntApp: App {
    var body: some Scene {
        WindowGroup {
            CardsListView()
                .environmentObject(CardStore(defaultData: true)) // Initialize the store with default data
        }
    }
}
