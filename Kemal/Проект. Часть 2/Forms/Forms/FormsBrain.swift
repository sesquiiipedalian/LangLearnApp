import Foundation

//public class Counter {
//    var count = 0
//    func increment() {
//        count += 1
//    }
//    func increment(by amount: Int) {
//        count += amount
//    }
//    func reset() {
//        count = 0
//    }
//}

struct Lesson: Identifiable {
  var id = UUID()
  var title: String
  var subtitle: String
  var starCount = 0
  var words: [String]
}

struct Question: Identifiable, Hashable {
    var theme: String  //Название темы урока
    var id = UUID()
    var question: String // Вопрос на английском
    var question_translate: String // Перевод
    var choices: [String] // Варианты ответа
    var answer: String // Правильный ответ
}

//вся логика здесь
struct FormsBrain {
    
    var gameOver = false
    var count = 0
    var stars = 2
    
    mutating func reset() {
        count = 0
        index = 0
        gameOver = false
    }
    
    var index = 0
    
    var lessonsMap: [String: [Question]] = [:]
    
    var forms = [
        
        Question(theme: "PresentSimple",
                 question: "This city never ___.",
                 question_translate: "Этот город никогда не спит.",
                 choices: ["sleep", "slept", "did sleep", "sleeps"],
                 answer: "sleeps"),
        
        Question(theme: "PresentSimple",
                 question: "My bags ____ black.",
                 question_translate: "Мои сумки чёрные.",
                 choices: ["are", "am", "is"],
                 answer: "are"),
        
        Question(theme: "PresentSimple",
                 question: "I don't ____ with you.",
                 question_translate: "Я не согласен с тобой.",
                 choices: ["agree", "agrees", "agreeing"],
                 answer: "agree"),
        
        Question(theme: "PresentSimple",
                 question: "We ___ frineds.",
                 question_translate: "Мы друзья.",
                 choices: ["am", "is", "are"],
                 answer: "are"),
        
        Question(theme: "PresentSimple",
                 question: "They ___ to the cinema.",
                 question_translate: "Они ходят в кино.",
                 choices: ["go", "goes", "are going"],
                 answer: "go"),
        
        
        //////////////////////////////////
        
//        Question(theme: "FutureSimple",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "FutureSimple",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "FutureSimple",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "FutureSimple",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "FutureSimple",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
//
//        //////////////////////////////////
//
//        Question(theme: "ToBe",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "ToBe",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "ToBe",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "ToBe",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "TToBe",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
//
//        /////////////////////////
//        ///
//        Question(theme: "ModalVerbs",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "ModalVerbs",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "ModalVerbs",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "ModalVerbs",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "ModalVerbs",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
//
//        /////////////////////////
//        ///
//        Question(theme: "PastSimple",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "PastSimple",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "PastSimple",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "PastSimple",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "PastSimple",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
//
//
//        /////////////////////////
//        ///
//        Question(theme: "Adjectives",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "Adjectives",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "Adjectives",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "Adjectives",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "Adjectives",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
//
//        /////////////////////////
//        ///
//        Question(theme: "PresentContinuous",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "PresentContinuous",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "PresentContinuous",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "PresentContinuous",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "PresentContinuous",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
//
//
//        /////////////////////////
//        ///
//        Question(theme: "Pronouns",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "Pronouns",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "Pronouns",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "Pronouns",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "Pronouns",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
//
//        /////////////////////////
//        ///
//        Question(theme: "Prepositions",
//                 question: "It ____ take you at least 20 minutes.",
//                 question_translate: "Это займёт у тебя минимум 20 минут.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//
//        Question(theme: "Prepositions",
//                 question: "He will ____ in Paris tomorrow.",
//                 question_translate: "Он приедет в Париж завтра.",
//                 choices: ["will not", "will", "is about"],
//                 answer: "will"),
//
//        Question(theme: "Prepositions",
//                 question: "I will ____ the train.",
//                 question_translate: "Я поеду на поезде.",
//                 choices: ["take", "taken", "took"],
//                 answer: "will"),
//
//        Question(theme: "Prepositions",
//                 question: "They wont't ____ there.",
//                 question_translate: "Их там не будет.",
//                 choices: ["be", "are", "was"],
//                 answer: "be"),
//
//
//        Question(theme: "Prepositions",
//                 question: "We wont't ____ the marathon.",
//                 question_translate: "Мы не побежим на марафон.",
//                 choices: ["runs", "run", "running"],
//                 answer: "run"),
        
        
        
        
    ]
    
    func getQuestion() -> Question {
        forms[index]
    }
    
    // модель не зависит от польз-го интерфейса
    
    mutating func nextQuestion() {
        if index + 1 < forms.count {
            index += 1
        } else {
            gameOver = true
            // вернулись обратно, а надо остановить всё
        }
    }
    
    mutating func checkAnswerBool(userAnswer: String) -> Bool {
        var result = false
        if userAnswer == forms[index].answer {
            count += 1
            result = true
        }
        
        return result
    }
}

