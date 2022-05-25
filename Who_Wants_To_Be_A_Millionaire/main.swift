//Тестовое задание: Составить игру «Кто хочет стать миллионером». Программа должна работать следующим образом: принтуется вопрос и варианты ответов, пользователь должен отвечать только буквами. Когда пользователь правильно отвечает должно быть начисление суммы, если не правильно, то игра окончена. Добавить функции: забрать сумму и 1подсказка: 50 на 50, программа должна оставить правильный ответ и один любой другой, другие удалить. Построить программу инструментами ООП. В логику лезть не буду, реализуйте как хотите, main не должен содержать логику. 5 вопросов достаточно.

var game = TheGame()
game.greetEveryone()

var quiz = Quiz()

quiz.askQuestion(question: "Who is a founder and owner of FB?")
quiz.showPossibleAnswers(answers: ["a" : "Elon Musk", "b" : "Bill Gates", "c" : "Jack Mao", "d" : "Mark Zukerberg"])

var gamer = Gamer()

game.checkAnswer1()
game.checkAnswer2()
game.checkAnswer3()
game.checkAnswer4()
game.checkAnswer5()
