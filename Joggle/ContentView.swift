//
//  ContentView.swift
//  Joggle
//
//  Created by Eric on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 60) {
            LetterGridView()
                .rotationEffect(.degrees(180))

            LetterGridView()
        }
        .padding(10)
    }
}

#Preview {
    ContentView()
}
