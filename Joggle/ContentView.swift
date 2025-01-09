//
//  ContentView.swift
//  Joggle
//
//  Created by Eric on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var game = Game()

    var body: some View {
        VStack(spacing: 60) {
            LetterGridView(player: game.player2, game: game)
                .rotationEffect(.degrees(180))

            LetterGridView(player: game.player1, game: game)
        }
        .padding(10)
    }
}

#Preview {
    ContentView()
}
