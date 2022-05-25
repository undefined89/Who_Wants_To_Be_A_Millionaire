class Quiz {
    var question: String = ""
    var answers: [Character : String] = [:]
    
    func askQuestion(question: String) {
        self.question = question
        print("??? \(question)")
    }
    
    func showPossibleAnswers(answers: [Character : String]) {
        self.answers = answers
        print("And here are possible answers: ")
        print("\(answers)")
    }
}
