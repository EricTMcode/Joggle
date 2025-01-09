//
//  LetterGridView.swift
//  Joggle
//
//  Created by Eric on 08/01/2025.
//

import SwiftUI

struct LetterGridView: View {
    @ObservedObject var player: Player
    var game: Game

    var columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ZStack {
            LazyVGrid(columns: columns) {
                ForEach(0..<game.tiles.count, id: \.self) { index in
                    let tile = game.tiles[index]

                    LetterView(
                        letter: tile,
                        isSelected: player.selectedTiles.contains(index),
                        selectionColor: player.color) {
                            _ = player.trySelecting(index, in: game)
                    }
                }
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

#Preview {
    LetterGridView(player: Player(color: .orange), game: Game())
}
