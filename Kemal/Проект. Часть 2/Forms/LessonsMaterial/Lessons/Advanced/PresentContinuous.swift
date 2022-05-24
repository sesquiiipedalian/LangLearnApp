import SwiftUI

struct PresentContinuous: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Group {
                    TitleStackFull(text1: "Жизнь начинается сейчас!",
                                   text2: "Right now!",
                                   text3: " ")
                    TitleStack(text: "Как жить в моменте? Как говорить о самом настоящем? Что стоит за всем этим? Ты узнаешь прямо сейчас!")
                        .foregroundColor(.blue)
                        .font(.system(size: 27))
                    Spacer()
                }
                
                Group {
                    VStack(alignment: .leading, spacing: -2) {
                        DefaultTitle(text: "Нас часто спрашивают:")
                        TitleStack(text: "'What are you doing now?'")
                        DefaultTitle(text: "(Что ты делаешь сейчас?)")
                    }
                    
                    VStack(alignment: .leading, spacing: -2) {
                        DefaultTitle(text: "Пришло время использовать настоящее длительное время - ")
                        TitleStack(text: "Present Continuous.")
                    }
                }
                
                Group {
                    DefaultTitle(text: "Когда используем?")
                    
                    TitleStack(text: "1) Когда действие происходит прямо сейчас, в момент речи.")
                    List3(header: "Пример",
                          text11: "Dogs are playing in the field.",
                          text12: "Собаки играют в поле.",
                          text21: "He is running there.",
                          text22: "Он бегает там.",
                          text31: "I am drinking the tea now.",
                          text32: "Я сейчас пью чай.")
                    
                    Spacer()
                    
                    TitleStack(text: "2) Действие происходит в настоящем, но не в момент речи.")
                    DefaultTitle(text: "Сегодня, на этой неделе, в этом месяце...")
                    List1(header: "Пример",
                          text11: "I am reading an interesting book.",
                          text12: "Я читаю интересную книгу.")
                }
                TitleStack(text: "Сегодня ты изучил секрет счастья - быть в моменте. Ценить то, что прлисходит прямо сейчас. Самое время поделиться с этим с другими. Почаще быть в этом самом настоящем.")
                
//                moveNextTestButton()
            }
        }
        .padding(.horizontal, 32)
        
        .background(LinearGradient(colors: [Color("grammar.material.light"),
                                            Color("grammar.material.light")],
                                   startPoint: .top, endPoint: .bottom))
    }
}

struct PresentContinuous_Previews: PreviewProvider {
    static var previews: some View {
        PresentContinuous()
    }
}
