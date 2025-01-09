//
//  String-Scoring.swift
//  Joggle
//
//  Created by Eric on 09/01/2025.
//

import Foundation

extension String {
    var score: Int {
        if count < 5 {
            return 1
        } else {
            return count - 3
        }
    }
}
