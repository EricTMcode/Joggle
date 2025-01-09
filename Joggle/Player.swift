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
        selectedTiles.append(index)
        return nil
    }
}
