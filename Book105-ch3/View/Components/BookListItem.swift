//
//  BookListItem.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/20/25.
//
import SwiftUI

struct BookListItem: View {
    let bookInList: Book
    
    var body: some View {
        HStack{
            Image(bookInList.image ?? "default_book") // ??: is called nullish coalescing operator
                .resizable()
                .frame(width: 50, height: 70)
            VStack(alignment: .leading) {
                Text(bookInList.title)
                Text(bookInList.author  != "" ? bookInList.author : "Anonymous")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }
        }
    }
}
