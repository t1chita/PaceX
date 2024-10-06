//
//  QuizzDetailsViewModel.swift
//  PaceX
//
//  Created by Temur Chitashvili on 06.10.24.
//

import Foundation

final class QuizzDetailsViewModel: ObservableObject {
    let quiz: Quiz
    @Published var quizIndex: Int = 0
    
    init(quiz: Quiz) {
        self.quiz = quiz
    }
    
}
