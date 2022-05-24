import SwiftUI

struct PastSimple: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Group {
                    TitleStackFull(text1: "Как запомнить?",
                                   text2: "Неправильные глаголы",
                                   text3: " ")
                    TitleStack(text: "Неправильные глаголы!")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                    Spacer()
                }
                
                Group {
                    
                    DefaultTitle(text: "Обычно мы учим то, что правильно. Но сегодняшний урок - исключение. В английском без них - никуда.")
                    DefaultTitle(text: "Первая форма используется в простом настоящем - Present Simple, вторая в прошедшем - Past Simple. А третья пригодится позже - для Present Perfect.")
                    
                    
                    TitleStack(text: "Взгляни, ты уже видел их в репликах Бена!")
                    
                    DefaultTitle(text: "to find - находить")
                    
                    CompThree(text1: "He found me.",
                              text2: "Он нашёл меня!")
                    
                    
                    DefaultTitle(text: "to meet - встречать")
                    
                    CompThree(text1: "I met a lot of people.",
                              text2: "Я встречал много людей.")
                    
                    DefaultTitle(text: "to send - посылать")
                    
                    CompThree(text1: "He sent me the letter.",
                              text2: "Он послал мне письмо.")
                }
                
                VStack(alignment: .leading) {
                    DefaultTitle(text: "Как запомнить?")
                    Spacer()
                    TitleStack(text: "Начать с самых часто используемых. Учить похожие блоки по 3-4 глагола. Повторять вслух как стихи.")
                }
                
                VStack(alignment: .leading) {
                    DefaultTitle(text: "Это не так сложно как кажется?")
                    Spacer()
                    TitleStack(text: "Со временем ты будешь на автомате рассказывать, как на прошлой неделе прочитал книгу - потерял ключи - нашёл друга и водил машину.")
                }
//                moveNextTestButton()
            }
        }
        .padding(.horizontal, 32)
        
        .background(LinearGradient(colors: [Color("grammar.material.light"),
                                            Color("grammar.material.light")],
                                   startPoint: .top, endPoint: .bottom))
    }
}

struct PastSimple_Previews: PreviewProvider {
    static var previews: some View {
        PastSimple()
    }
}
