//
//  ContentView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    @State var books: [Book] = getbooks()
    
    var body: some View {
        NavigationStack {
            List($books, id: \.self.title) { $book in
                NavigationLink(destination: DetailView(book: $book)){
                    BookListItem(book: $book)
                    
                }
                
            }.navigationBarTitle("Books Manager")//end of navStack
        }
    }//end of body
}//end of contentView

#Preview {
    ContentView()
       
}
