//
//  api.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/20/25.
//

func getbooks() -> [Book] {
    return [
        
            Book(title:"The Fellowship of the Ring", author:"J.R.R. Tolkien",image:"lotr_fellowship",description:"The Fellowship of the Ring is the first book in J.R.R Tolkien's high-fantasy trilogy, The Lord of the Rings"),
            Book(title:"The Two Towers", author:"J.R.R. Tolkien", image:"lotr_towers",description: "The Two Towers is the second book in J.R.R Tolkien's high-fantasy trilogy, The Lord of the Rings"),
            Book(title:"The Return of the King", author:"J.R.R. Tolkien", image: "lotr_king", description: "The Return of the King is the third book in J.R.R Tolkien's high-fantasy trilogy, The Lord of the Rings"),
            Book(title: "Test Book",)
        ]
    
    
}
