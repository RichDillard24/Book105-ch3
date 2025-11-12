//
//  BookListItem.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/20/25.
//
import SwiftUI

struct BookListItem: View {
    
    let book: PersistentBook
    //var book: Book
    var body: some View {
        
        
        HStack{
            Image(uiImage:
                    (book.imageData != nil ? UIImage(data: book.imageData!) :
                        UIImage(resource: .defaultBook))!
                  )
                .resizable()
            
                .frame(width: 50, height: 70)
            VStack(alignment: .leading) {
                
                Text(book.title)
                Text(book.author ?? "Anonymous")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
        }
    }
}
