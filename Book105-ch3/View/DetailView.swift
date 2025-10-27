//
//  DetailView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//
import SwiftUI

struct DetailView: View {
    
    @Binding var book: Book
    @State private var showEditSheet: Bool = false
    
    var body: some View {
        ScrollView {
           
            VStack(alignment: .leading, spacing: 20) {
                HStack{
                    Image(book.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                        .padding(.vertical, 20)
                    VStack{
                        Text("\(book.title)")
                            .font(.system(size: 36, weight: .bold, design: .serif))
                        Text("by \(book.author)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("Genre: \(book.genre.rawValue)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                HStack{
                    
                
                CustomeCapsule(text: book.readingStatus.rawValue, color: .accentColor.opacity(0.5))
                    Spacer()
                    FavoriteToggle(isFavorite: $book.isFavorite)
                }
                VStack{
                        Text(book.description != "" ? book.description: "No description")
                        if(book.review != "" || book.rating > 0){
                            Text("Review")
                                .font(.title3)
                            if(book.rating > 0){
                                Text("Rating: \(book.rating) \(book.rating > 1 ? "stars" : "Star")")
                            }
                        }
                    }
                
                    Text(book.review != "" ? book.review: "No review yet")
              
            }
            .padding(.horizontal)
        }
        .navigationTitle("Details") //Sets a title
        .navigationBarTitleDisplayMode(.inline) // Changes the title to be smaller
        .navigationBarItems(trailing: Button("Edit", action: {
            showEditSheet.toggle()
        }))// sets a button on the top right corner with the text "Edit"
        .sheet(isPresented: $showEditSheet, content: {
            AddEditBookView(book: $book)
        })  // presents a sheet whenever "$showEditSheet" is "true"
    }
}
