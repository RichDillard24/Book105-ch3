//
//  ContentView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var books: [Book] = getBooks()
    
    var body: some View {
        TabView {
            BookListView(books: $books)
                .tabItem {
                    Label("books", systemImage: "books.vertical.fill")
                }
            FavoritesView(books: $books)
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
        }
       
    }
}
#Preview {
    ContentView()
}
