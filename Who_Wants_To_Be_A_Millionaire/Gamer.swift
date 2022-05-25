class Gamer {
    var answer: Character = " "
    
    func getGamerAnswer(answer: Character) -> Character {
        self.answer = answer
        print("---------------------------")
        print("And your answer is: \(answer)")
        print("---------------------------")
        return answer
    }
}
