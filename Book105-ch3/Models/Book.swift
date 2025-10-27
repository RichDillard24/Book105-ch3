//
//  Book.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//


import Foundation

struct Book: Identifiable {
    let id  = UUID()
    var title: String
    var author: String = ""
    var genre: BookGeneres = .unknown
    var image: String = "default_book"
    var description: String = "" //it could be Nil because it ends with ?
    var rating: Int = 0
    var review: String = ""
    var readingStatus: ReadingStatus = .unknown
    var isFavorite: Bool = false
}
