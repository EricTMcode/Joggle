//
//  LetterView.swift
//  Joggle
//
//  Created by Eric on 08/01/2025.
//

import SwiftUI

struct LetterView: View {
    var letter: String
    var isSelected = false
    var selectionColor: Color
    var selectTile: () -> Void

    var body: some View {
        Button(action: selectTile) {
            Text(letter)
                .font(.system(size: 44).bold())
                .foregroundStyle(isSelected ? .white : .primary)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(isSelected ? selectionColor : Color.gray.opacity(0.25))
                .aspectRatio(1, contentMode: .fit)
                .animation(nil, value: isSelected)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    LetterView(letter: "X", selectionColor: .blue) {
        // do nothing
    }
}
