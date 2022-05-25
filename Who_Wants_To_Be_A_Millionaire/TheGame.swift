class TheGame {
    var name: String = "----"
    var correctAnswer: String = ""
    var money: Int = 0
    var prize: Int = 1000
    var hint: Int = 1
    
    func greetEveryone() {
        print("Dear Ladies and Gentlemen, welcome to the show WHO WANTS TO BE A MILLIONNAIRE. And today \(name) is going to try his luck. Let's start!")
        print("So the first question is: ")
    }
    
    func checkAnswer() {
                if String(gamer.answer) == correctAnswer {
                    money += prize
                    print("🥳🥳🥳 Congrats! Your bank now is \(money) KGS!")
                    takeTheMoney()
                } else {
                    print("Sorry 😔, game over...")
                }
    }
    
    func checkAnswer1() {
        
        var gamerAnswer = gamer.getGamerAnswer(answer: Character(readLine()!))
        correctAnswer = "d"
        
        checkAnswer()
    }
    
    func takeTheOnlyHint() {
        if hint == 1 {
            print("You want to take a 50/50 hint and see what we have now: ")
            for _ in quiz.answers {
                quiz.answers.removeValue(forKey: "a")
                quiz.answers.removeValue(forKey: "d")
            }
            print(quiz.answers)
            hint -= hint
        } else {
            print("There's no hint avalaible, sorry...")
        }
    }

    func takeTheMoney() {
        if money < 5000 {
            
            print("Do you want to take the money or continue to play?")
            var moneyOrGame = readLine()
        
            if moneyOrGame == "money" {
                print("Well, it's your decision, you got \(money) KGS! We were happy to havee you here today, \(name)!!!")
                money = 0
            } else if moneyOrGame == "play" {
                print("Keep on playing 🤗")
            } else {
                print("Something went wrong, try again!")
            }
        } else {
            print("\(name), you won without any doubts and can take a chance in our final ))).")
        }
    }
    
    func checkAnswer2() {

        if money >= 1000 {
            quiz.askQuestion(question: "When did the Great Depression start?")
            quiz.showPossibleAnswers(answers: ["a" : "September, 1929", "b" : "August, 1939", "c" : "August, 1929", "d" : "September, 1939"])
                              
            takeTheOnlyHint()
            
            var gamerAnswer = gamer.getGamerAnswer(answer: Character(readLine()!))
            correctAnswer = "c"
            
            checkAnswer()
        }
    }
    
    func checkAnswer3() {

        if money >= 2000 {
            quiz.askQuestion(question: "Which currency is counted as most unstable in 2022?")
            quiz.showPossibleAnswers(answers: ["a" : "RUB", "b" : "KGS", "c" : "USD", "d" : "KZT"])
            
            var gamerAnswer = gamer.getGamerAnswer(answer: Character(readLine()!))
            correctAnswer = "a"
    
            checkAnswer()
        }
    }
    
    func checkAnswer4() {

        if money >= 3000 {
            quiz.askQuestion(question: "Daenerys emerges with three baby dragons whom she names Drogon, Rhaegal. What was the 3rd one's name?")
            quiz.showPossibleAnswers(answers: ["a" : "Valkery", "b" : "Vazerius", "c" : "Verberion", "d" : "Viserion"])
                        
            takeTheOnlyHint()
            
            var gamerAnswer = gamer.getGamerAnswer(answer: Character(readLine()!))
            correctAnswer = "d"
            
            checkAnswer()
        }
    }
    
    func checkAnswer5() {

        if money >= 4000 {
            quiz.askQuestion(question: "Freddy Mercury was a leader of this legendary rock band?")
            quiz.showPossibleAnswers(answers: ["a" : "The Rolling Stones", "b" : "Queen", "c" : "Pink Floyd", "d" : "The Beatles"])
            
            var gamerAnswer = gamer.getGamerAnswer(answer: Character(readLine()!))
            correctAnswer = "b"
            
            checkAnswer()
        }
    }
    
}
