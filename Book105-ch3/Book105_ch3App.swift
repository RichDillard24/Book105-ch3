//
//  Book105_ch3App.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
//

import SwiftUI
import SwiftData

@main
struct BookManagerApp: App {
    let modelContainer: ModelContainer

    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(modelContainer)
        }
    }
    
    init(){
        do{
            modelContainer = try ModelContainer(
                for: PersistentBook.self
            )
        } catch{
            fatalError("Failed to load container: \(error)")
        }
    }
}
