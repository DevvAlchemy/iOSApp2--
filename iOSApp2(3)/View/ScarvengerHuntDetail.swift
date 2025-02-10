//
//  ScavengerHuntDetailView.swift
//  iOSApp2
//
//  Created by Royal K on 2025-02-06.
//

import SwiftUI

struct ScavengerHuntDetailView: View {
    @Binding var card: Card

    var body: some View {
        VStack {
            if let item = card.scavengerHuntItem {
                Text(item.clue)
                    .font(.title)
                    .padding()
                Text("at \(item.businessName)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
            } else {
                Text("No scavenger hunt item found.")
                    .font(.title)
                    .padding()
                Spacer()
            }
        }
        .padding()
    }
}

struct ScavengerHuntDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ScavengerHuntDetailView(card: .constant(Card(backgroundColor: .blue, scavengerHuntItem: ScavengerHuntItem(clue: "Find the golden statue.", businessName: "Main Street Cafe"))))
    }
}
