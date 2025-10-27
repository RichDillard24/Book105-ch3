//
//  BookListView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//


import SwiftUI

struct BookListView: View {
    
    @Binding var books: [Book]
    @State var showAddSheet = false
    @State var newBook: Book = Book(title:"")
    
    var body: some View {
        NavigationStack {
            List($books, id: \.self.id) { $book in
                
                 // Each book will display the foloowing:
                NavigationLink(destination: DetailView(book: $book)){
                    BookListItem(bookInList: book)
                }
            }.navigationBarTitle("Book Manager")
                .navigationBarItems(trailing: Button("Add", action: {
                    showAddSheet.toggle()
                }))
                .sheet(isPresented: $showAddSheet){
                    if !newBook.title.isEmpty {
                        books.append(newBook)
                    }
                    newBook = Book(title: "")
                }content:{
                    AddEditBookView(book: $newBook)
                }
                        }
            }
        }


