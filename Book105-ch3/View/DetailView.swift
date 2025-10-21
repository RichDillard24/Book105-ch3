//
//  DetailView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var book: Book
    @State var showEditSheet: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    Image(book.image ?? "defualt book")
                        .resizable()
                        .scaledToFit()
                        .frame(width:125, height:150)
                        .padding(.vertical, 20)
                    VStack{
                        Text(book.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .fontDesign(.serif)
                        if (book.author != nil){
                            Text("By \(book.author!)")
                                .font(.headline)
                                .foregroundColor(.secondary)
                        }
                        
                    }
                }
                Text(book.description ?? "No description")
                
            }
            .padding()
        }
        .navigationTitle(book.title)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button("Edit", action: {
            showEditSheet.toggle()
        }))
        .sheet(isPresented: $showEditSheet, content: {
            Text("This is the edit view")
        })
               
    }
}

//#Preview {
   // DetailView(book:Book(title:"test book"))
//}
