//
//  ScavengerHuntListView.swift
//  iOSApp2
//
//  Created by Royal K on 2025-02-06.
//

import SwiftUI

struct CardsListView: View {
    @EnvironmentObject var store: CardStore
    @State private var selectedCard: Card?

    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: Settings.thumbnailSize.width))]) {
                ForEach(store.cards) { card in
                    CardThumbnail(card: card)
                        .onTapGesture {
                            selectedCard = card
                        }
                }
            }
            .padding()
        }
        .fullScreenCover(item: $selectedCard) { card in
            if let index = store.index(for: card) {
                ScavengerHuntDetailView(card: $store.cards[index])
            } else {
                fatalError("Unable to locate selected card")
            }
        }
    }
}

struct CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
            .environmentObject(CardStore(defaultData: true))
    }
}
