//
//  QuizQuestion.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//


import SwiftUI

// Define a structure for QuizQuestion
struct QuizQuestion: Identifiable {
    let id = UUID().uuidString
    let question: String
    let options: [String]
    let correctAnswer: String
}

struct Quiz: Identifiable {
    let id = UUID().uuidString
    let title: String
    let questions: [QuizQuestion]
    let image: ImageResource
}
