//
//  AddEditBook.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//

import SwiftUI
import Foundation
import SwiftData

struct AddEditBookView: View {
    @StateObject private var viewModel: AddEditBookVieModel
   // var book: PersistentBook
    @Environment(\.dismiss) var dismiss
    //@State private var viewModel: Book

    init(book: PersistentBook? = nil, modelContext: ModelContext){
        _viewModel = StateObject(wrappedValue: AddEditBookVieModel(book:book, modelContext: modelContext))
    }
   // @Binding var rating: Double
    var body: some View {
        NavigationStack {
            
            
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
                VStack{
                    
                    
                    Form {
                        Section(header: Text("Book Details")) {
                            TextField("Title of the book", text: $viewModel.title)
                            TextField("Author", text: $viewModel.author)
                            TextEditor(text: $viewModel.summary)
                                .frame(height: 100)
                            Picker("Genre", selection: $viewModel.genre){
                                ForEach(Genre.allCases, id: \.self){ genre in
                                    Text(genre.rawValue).tag(genre)
                                }
                            }
                        }
                        // Text("\(book.rating, specifier: "%.1f")")
                        
                        Section(header: Text("Review")){
                            Picker("Rating", selection: $viewModel.rating){
                                Text("Not rated yet").tag(0)
                                ForEach(1...5, id: \.self){ i in
                                    Text("\(i)").tag(i)
                                }
                            }
                            TextEditor(text: $viewModel.review)
                                .frame(height: 100)
                            Picker("Reading stutus", selection: $viewModel.readingStatus){
                                ForEach(ReadingStatus.allCases, id: \.self){ status in
                                    Text(status.rawValue).tag(status)
                                }
                            }
                        }
                    }
                    .navigationTitle(viewModel.sheetTitle)
                    
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction){
                            Button("Cancel"){
                                dismiss()
                            }
                        }
                        ToolbarItem(placement: .confirmationAction){
                            Button("Save"){
                                viewModel.save()
                                dismiss()
                            }.disabled(viewModel.isSaveButtonDisabled)
                               // .font(.title.bold())
                        }
                    }
                    // Text(book.title)
                    
                }
            }
        }
    }
}
