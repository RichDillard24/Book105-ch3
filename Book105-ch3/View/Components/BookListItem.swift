//
//  BookListItem.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/20/25.
//

import SwiftUI
struct BookListItem: View {
    @Binding var book : Book
    
    var body: some View {
        HStack {
            Image(book.image ?? "defualt book")
                .resizable()
                .frame(width: 50, height: 70)
            VStack(alignment: .leading) {
                Text(book.title)
                Text(book.author ?? "Annonymous")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
               
        }
    }
    
}
