import Foundation

class FormsViewModel: ObservableObject {
    
    @Published var formsBrain = FormsBrain()
    @Published var isRunning = true
    
    var starCount: Int {
        formsBrain.stars
    }
    
    var gameOver: Bool{
        formsBrain.gameOver
    }
    
    var counter_of_right_answer: String{
        String(formsBrain.count)
    }
    
    var question: Question {
        formsBrain.getQuestion()
    }

    func checkAnswer(_ answer: String) -> Bool {
        formsBrain.checkAnswerBool(userAnswer: answer)
    }
    
    func nextQuestions() {
        formsBrain.nextQuestion()
    }
    
    func resetTest() {
        formsBrain.reset()
        isRunning = true
    }
    
    
    
    
//    func getTestResult(answer: String, cter: Counter) {
//        if formsBrain.checkAnswerBool(userAnswer: answer) {
//            cter.increment()
//        }
//    }
    
}
