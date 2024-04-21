//
//  Lesson.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import Foundation

struct Lesson: Codable {
    let toStudy, correctStatements: [String]
    let number: Int
    let name: String
    let description: String
}

