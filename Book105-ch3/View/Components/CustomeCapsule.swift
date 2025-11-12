//
//  CustomeCapsule.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//

import SwiftUI


struct CustomeCapsule: View {
    
    let text: String
    var color: Color = .accentColor
    
    init(_ text:String, color: Color = .accentColor.opacity(0.5)){
        self.text = text
        self.color = color
    }
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .padding(8)
            .background(color)
            .clipShape(Capsule())
            
    }
}
