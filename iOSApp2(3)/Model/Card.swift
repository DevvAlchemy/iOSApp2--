import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    var backgroundColor: Color = .yellow
    var elements: [CardElement] = []
    var scavengerHuntItem: ScavengerHuntItem? = nil // Add this line
}
