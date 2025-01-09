//
//  Player.swift
//  Joggle
//
//  Created by Eric on 09/01/2025.
//

import SwiftUI

class Player: ObservableObject {
    var usedWords = [String]()
    var color: Color

    @Published var selectedTiles = [Int]()

    init(color: Color) {
        self.color = color
    }

    func reset() {
        selectedTiles.removeAll()
        usedWords.removeAll()
    }

    func trySelecting(_ index: Int, in game: Game) -> String? {
        if selectedTiles.last == index && selectedTiles.count >= 3 {
            return submit(in: game)
        }

        if let indexLocation = selectedTiles.firstIndex(of: index) {
            if selectedTiles.count == 1 {
                selectedTiles.removeLast()
            } else {
                selectedTiles.removeLast(selectedTiles.count - indexLocation - 1)
            }
        } else {
            tryAppending(index)
        }

        return nil
    }

    func tryAppending(_ newIndex: Int) {

    }

    func submit(in game: Game) -> String? {
        return nil
    }
}
