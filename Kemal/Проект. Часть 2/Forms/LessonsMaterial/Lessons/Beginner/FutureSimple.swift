import SwiftUI

struct FutureSimple: View {
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                TitleStackFull(text1: "Будешь? Буду.",
                               text2: "Will",
                               text3: "Ты умеешь предсказывать будущее? Сегодня мы потренируемся это делать. А ещё научимся быть спонтанным и делиться своими планами.")
                
                VStack(alignment: .leading) {
                    
                    List5(header: "Когда?",
                          text11: "tonight",
                          text12: "сегодня вечером",
                          text21: "the day after tomorrow",
                          text22: "послезавтра",
                          text31: "soon",
                          text32: "вскоре",
                          text41: "in a week / in a month",
                          text42: "через неделю / через месяц ",
                          text51: "next year",
                          text52: "в следующем году")
                    
                    Text("Когда используем?")
                    
                    VStack {
                        TitleStack(text: "1) Выражаем единичные действия в будущем.")
                        
                        CompTwo(text1: "We will take a taxi.",
                                text2: "Мы возьмём такси.",
                                text3: "He will spend his vacation in China",
                                text4: "Она проведёт отпуск в Китае.")
                        
                        
                        TitleStack(text: "2) Действие будет повторяться.")
                        
                        CompThree(text1: "I will go to US a few times",
                                  text2: "Я съезжу в США несколько раз.")
                        
                        TitleStack(text: "3) Принимаем спонтанные решения")
                        
                        CompTwo(text1: "I will order a steak, and you?",
                                text2: "Я закажу стейк, а ты?",
                                text3: "Hold on. I'll get a pen.",
                                text4: "Подожди я достану ручку")
                    }
                    
                    TitleStack(text: "Утверждение. 'Кто-то будет.'")
                    TitleStack(text: "Объект + will + действие")
                    
                    List5(header: "Утверждения",
                          text11: "I will play",
                          text12: "Я буду играть.",
                          text21: "We will play",
                          text22: "Мы будем играть.",
                          text31: "He/She/It will play",
                          text32: "Он/Она/Оно будет играть.",
                          text41: "They will play",
                          text42: "Они будут играть.",
                          text51: "You will play",
                          text52: "Ты будешь играть.")
                }
                
                VStack(spacing: -2) {
                    TitleStack(text: "Сокращай!")
                    TitleStack(text: "I will = I'll")
                    TitleStack(text: "You will = You'll")
                    TitleStack(text: "He will = He'll")
                    TitleStack(text: "She will = She'll")
                    TitleStack(text: "It will = It'll")
                    TitleStack(text: "We will = We'll")
                    TitleStack(text: "They will = They'll")
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

struct FutureSimple_Previews: PreviewProvider {
    static var previews: some View {
        FutureSimple()
    }
}
