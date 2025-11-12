//
//  FilterButton.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 11/1/25.
//

import SwiftUI

struct FilterButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "line.horizontal.3.decrease.circle")
        }
        .accessibilityLabel("Open filter option")
    }
}
