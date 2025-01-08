//
//  LetterGridView.swift
//  Joggle
//
//  Created by Eric on 08/01/2025.
//

import SwiftUI

struct LetterGridView: View {
    var columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ZStack {
            LazyVGrid(columns: columns) {
                ForEach(0..<16, id: \.self) { index in
                    LetterView(letter: "X", selectionColor: .red) {
                        // do nothing
                    }
                }
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

#Preview {
    LetterGridView()
}
