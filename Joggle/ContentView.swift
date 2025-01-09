//
//  ContentView.swift
//  Joggle
//
//  Created by Eric on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var game = Game()

    var timeRemainingText: Text {
        if game.timeRemaining > 0 {
            return Text(Date.now.addingTimeInterval(game.timeRemaining), style: .timer)
        } else {
            return Text("0:00")
        }
    }

    var body: some View {
        ZStack {
            VStack(spacing: 60) {
                LetterGridView(player: game.player2, game: game)
                    .rotationEffect(.degrees(180))

                LetterGridView(player: game.player1, game: game)
            }
            .padding(10)

            HStack {
                Spacer()
                timeRemainingText

                Spacer()
                timeRemainingText
                    .rotationEffect(.degrees(180))

                Spacer()
            }
            .foregroundStyle(.white)
            .font(.system(size: 36).monospacedDigit())
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(.indigo)
        }
    }
}

#Preview {
    ContentView()
}
