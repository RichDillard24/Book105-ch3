//
//  BookListView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//


import SwiftUI
import SwiftData

struct BookListView: View {
    
    //@Binding var books: [Book]
    @Query var books: [PersistentBook]
    @State var showAddSheet: Bool = false
    
    @Environment(\.modelContext) private var modelContext
    
    @State private var showFilterSheet: Bool = false
    @State private var selectedGenre: Genre?
    @State private var selectedReadingStatus: ReadingStatus?
    
    // Computed Variable
        private var filteredBooks: [PersistentBook] {

            books.filter {
                (
                    selectedGenre == nil
                    || $0.genre == selectedGenre
                )
                && (
                    selectedReadingStatus == nil
                    || $0.readingStatus == selectedReadingStatus
                )
            }
        }
    
    var body: some View {
        NavigationStack {
            VStack {
                if filteredBooks.isEmpty {
                    Text("No books found.")
                        .font(.headline)
                }
                
                List(filteredBooks, id: \.id) { book in
                    // Each book will display the following:
                    NavigationLink(destination: DetailView(book: book)) {
                        BookListItem(book: book)
                    }
                }
            }
            .navigationBarTitle("Book Manager") // Adds title on top
            .navigationBarItems(
                trailing: Button("Add") {// Adds button on top right corner with text "Edit"
                    showAddSheet.toggle()
                }
            )
            // Adds button on top right corner with text "Edit"
            .sheet(isPresented: $showAddSheet) {
               
                
                } content: {
                    AddEditBookView(modelContext: modelContext)
                }
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button(action: {
                            showFilterSheet.toggle()
                        }){
                            Image(systemName: "line.horizontal.3.decrease.circle")
                        }
                        .accessibilityLabel("Open filter options")
                    }
                }
                
                .sheet(isPresented: $showFilterSheet) {
                    
                } content: {
                    FiltersView(
                        selectedGenre: $selectedGenre,
                        selectedReadingStatus: $selectedReadingStatus
                    )
                }
            }
        }
    }

