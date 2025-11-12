//
//  BookGenres.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//

import Foundation

enum Genre: String, CaseIterable, Codable {
    case fiction
    case nonFiction
    case selfHelp
    case romance
    case scienceFiction
    case fantasy
    case mystery
    case horror
    case biography
    case unknown

}
