//
//  Lesson.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import Foundation

struct Lesson: Codable {
    var toStudy, correctStatements: [String]
    var number: Int
    let name: String
    let description: String
    var currentIndex: Int
}

