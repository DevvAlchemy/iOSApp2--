//
//  ScavengerHuntCardView.swift
//  iOSApp2
//
//  Created by Royal K on 2025-02-07.
//

import SwiftUI

struct CardThumbnail: View {
    let card: Card

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(card.backgroundColor)
                .frame(
                    width: Settings.thumbnailSize.width,
                    height: Settings.thumbnailSize.height)

            if let item = card.scavengerHuntItem {
                VStack {
                    Image(systemName: "questionmark.circle.fill") // Placeholder image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                    Text(item.businessName)
                        .font(.headline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 8)
                }
                .padding()
            }
        }
    }
}

struct CardThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        CardThumbnail(card: Card(backgroundColor: .blue, scavengerHuntItem: ScavengerHuntItem(clue: "Find the golden statue.", businessName: "Main Street Cafe")))
    }
}
