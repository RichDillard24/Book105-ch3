//
//  DetailView.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    Image("lotr_fellowship")
                        .resizable()
                        .scaledToFit()
                        .frame(width:125, height:150)
                        .padding(.vertical, 20)
                    VStack{
                        Text("The Fellowship of The Ring")
                            .font(.title)
                            .fontWeight(.bold)
                            .fontDesign(.serif)
                        Text("by \("J.R.R. Tolkien")")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                }
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ips")
                
            }
            .padding()
        }
       
    }
}

#Preview {
    DetailView()
}
