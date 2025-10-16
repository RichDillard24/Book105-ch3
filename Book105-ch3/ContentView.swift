//
//  ContentView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var books: [Book] = [
        Book(title:"The Fellowship of the Ring", author:"J.R.R. Tolkien",image:"lotr_fellowship",description:"The Fellowship of the Ring is the first book in J.R.R Tolkien's high-fantasy trilogy, The Lord of the Rings"),
        Book(title:"The Two Towers", author:"J.R.R. Tolkien", image:"lotr_towers",description: "The Two Towers is the second book in J.R.R Tolkien's high-fantasy trilogy, The Lord of the Rings"),
        Book(title:"The Return of the King", author:"J.R.R. Tolkien", image: "lotr_king", description: "The Return of the King is the third book in J.R.R Tolkien's high-fantasy trilogy, The Lord of the Rings")
    ]
    var body: some View {
       NavigationStack {
           List(books, id: \.self.title) { book in
               NavigationLink(destination: DetailView()){
                   HStack{
                       Image(book.image ?? "" )
                           .resizable()
                           .frame(width: 50, height: 70)
                       
                       VStack(alignment: .leading) {
                           
                           Text(book.title)
                           Text(book.author)
                               .font(.caption)
                               .foregroundColor(.secondary)
                           
                       }
                   }
               }
           }
           .navigationTitle(Text("Books Manager"))
        }//end of navStack
       
    }//end of body
}//end of contentView

#Preview {
    ContentView()
       
}
