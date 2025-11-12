//
//  ReadingStatus.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/27/25.
//
enum ReadingStatus: String, CaseIterable, Codable{
    case planeToRead = "Plan to read"
    case reading = "Reading"
    case dropped = "Dropped"
    case finished = "Finished"
    case unknown = "Unknown"
    
}
