//
//  BookCard.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//


import SwiftUI

struct BookCard: View {
   @Binding var book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundStyle(.white)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding()
                .background(LinearGradient(
                    colors:[.clear, .black.opacity(0.8)],
                    startPoint: .bottom,
                    endPoint: .top)
                )
            Spacer()
            Text(book.author)
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundStyle(.white)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding()
                .background(LinearGradient(
                    colors:[.clear, .black.opacity(0.8)],
                    startPoint: .top,
                    endPoint: .bottom)
                )
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image(book.image)
                    .resizable()
                    .scaledToFill().opacity(0.9)
            )
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 5)
        }
    }

