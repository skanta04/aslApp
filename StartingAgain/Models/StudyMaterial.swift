//
//  StudyMaterial.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//

import Foundation

struct StudyMaterial: Codable {
    var label: String
    var learningDescription: String
    var image: String
}

let one: StudyMaterial = StudyMaterial(label: "One", learningDescription: "The number 1 in ASL is signed by holding up your index finger.", image: "One")
let two: StudyMaterial = StudyMaterial(label: "Two", learningDescription: "The number 2 in ASL is signed by holding up your index and middle finger together.", image: "Two")
let three: StudyMaterial = StudyMaterial(label: "Three", learningDescription: "The number 3 in ASL is signed by holding up your index, middle, and thumb fingers together.", image: "Three")

let a: StudyMaterial = StudyMaterial(label: "a", learningDescription: "The letter A in ASL is signed by forming a closed fist and extending your thumb outwards from your fingers.", image: "A")
let b: StudyMaterial = StudyMaterial(label: "B", learningDescription: "The letter B in ASL is signed by starting with an open palm and tucking your thumb into your palm.", image: "B")
let c: StudyMaterial = StudyMaterial(label: "c", learningDescription: "The letter C in ASL is signed by curving your hand, palm facing sidways, where the top four fingers are held together with the thumb making up the bottom curve.", image: "C")



