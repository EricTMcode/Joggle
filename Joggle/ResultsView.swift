//
//  ResultsView.swift
//  Joggle
//
//  Created by Eric on 09/01/2025.
//

import SwiftUI

struct ResultsView: View {
    var player1Words = [String]()
    var player2Words = [String]()
    var player1Score = 0
    var player2Score = 0
    var result: String

    var body: some View {
        NavigationStack {
            List {
                PlayerResults(number: 1, score: player1Score, words: player1Words)
                PlayerResults(number: 2, score: player2Score, words: player2Words)
            }
            .navigationTitle(result)
        }
    }

    init(game: Game) {
        // calculate player words and scores
        for (word, player) in game.scores {
            if player === game.player1 {
                player1Score += word.score
                player1Words.append(word)
            } else {
                player2Score += word.score
                player2Words.append(word)
            }
        }

        // sort resulting words
        player1Words.sort()
        player2Words.sort()

        // calculate who won
        if player1Score > player2Score {
            result = "Player 1 wins!"
        } else if player1Score < player2Score {
            result = "Player 2 wins!"
        } else {
            result = "It's a Draw!"
        }
    }
}

#Preview {
    ResultsView(game: Game())
}
