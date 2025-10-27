//
//  FavoriteView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//

import SwiftUI

struct FavoritesView: View {
    
    @Binding var books: [Book]
    let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    private var favoriteBooks: [Binding<Book>] {
        $books.filter{ $0.wrappedValue.isFavorite }
    }
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: gridLayout) {
                    ForEach( favoriteBooks, id:\.id){ book in
                        NavigationLink(destination: DetailView(book: book)){
                            BookCard(book: book)
                        }
                    }
                }.navigationTitle("My Favorite Books")
            }
        }
    }
}
