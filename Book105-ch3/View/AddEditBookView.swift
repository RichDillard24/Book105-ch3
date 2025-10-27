//
//  AddEditBook.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//

import SwiftUI

struct AddEditBookView: View {
    @Binding var book: Book
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        .gray.opacity(0.1),
                        .gray.opacity(0.3)
                    ]
                ),
                startPoint: .top,
                endPoint: .bottom
            )
            Form {
                Section(header: Text("Book Details")) {
                    TextField("Title of the book", text: $book.title)
                    TextField("Author", text: $book.author)
                    TextEditor(text: $book.description)
                        .frame(height:100)
                    Picker("Genre", selection: $book.genre){
                        ForEach(BookGeneres.allCases, id: \.self){ genre in
                            Text(genre.rawValue).tag(genre)
                            
                        }
                    }
                }
                Section(header: Text("Review")){
                    Picker("Rating", selection: $book.rating){
                        Text("Not rated yet").tag(0)
                        ForEach(1...5, id: \.self){ i in
                            Text("\(i)").tag(i)
                            
                        }
                    }
                    TextEditor(text: $book.review)
                        .frame(height:100)
                    Picker("Reading Status", selection: $book.readingStatus){
                        ForEach(ReadingStatus.allCases, id: \.self){ status in
                            Text(status.rawValue).tag(status)
                        }
                    }
                }
            }
        }
    }
}
