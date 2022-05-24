import SwiftUI

struct Pronouns: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                TitleStackFull(text1: "Поговорим о себе",
                               text2: "Self/selves",
                               text3: "Как говорить о себе? Как доказать, что ты самостоятельный? Говорим ли мы про одного (-self) или про нескольких (-selves), используем формулу: my/your/our/them/her/him/it + self/selves")
                
                VStack(alignment: .leading) {
                    
                    List5(header: "Единственное число",
                          text11: "I",
                          text12: "Myself",
                          text21: "You",
                          text22: "Yourself",
                          text31: "He",
                          text32: "Himself",
                          text41: "She",
                          text42: "Herself",
                          text51: "It",
                          text52: "Itself")
                    
                    List3(header: "Множественное число",
                          text11: "We",
                          text12: "Ourselves",
                          text21: "You",
                          text22: "Yourselves",
                          text31: "They",
                          text32: "Themselves")
                    
                    Text("Когда используем?")
                    
                    VStack {
                        TitleStack(text: "1) Действие человека направлено на него самого")
                        
                        TitleStack(text: "Кто + что делает + слово")
                        
                        
                        List1(header: "Пример",
                              text11: "You can cut yourself.",
                              text12: "Ты можешь порезаться.")
                        
                        List1(header: "Пример",
                              text11: "She introduces herself.",
                              text12: "Она представилась.")
                        
                        TitleStack(text: "2) Если человек сделал что-то самостоятельно")
                        
                        TitleStack(text: "Кто + что делает + слово")
                        
                        List3(header: "Примеры",
                              text11: "I can read it myself.",
                              text12: "Я могу прочитать это сама.",
                              text21: "We ourselves cooked the dinner.",
                              text22: "Мы сами приготовили этот ужин.",
                              text31: "They themselves do their work.",
                              text32: "Они сами делают свою работу.")
                        
                        TitleStack(text: "3) Если он действует один. Идёт вместе с 'by'")
                        VStack(spacing: -3) {
                            TitleStack(text: "I - by myself")
                            TitleStack(text: "You - by yourself")
                            TitleStack(text: "We - by ourselves")
                            TitleStack(text: "They - by themselves")
                            TitleStack(text: "She - by herself")
                            TitleStack(text: "He - by himself")
                            TitleStack(text: "It - by itself")
                        }
                        
                        TitleStack(text: "Кто + что делает + слово")
                    }
                }
                TitleStack(text: "Теперь ты самостоятельный и можешь почаще говорить о себе (мы все любим это делать). Практикуйся почаще и заводи новых друзей!")

                
//                moveNextTestButton()
            }
        }
        .padding(.horizontal, 32)
        
        .background(LinearGradient(colors: [Color("grammar.material.light"),
                                            Color("grammar.material.light")],
                                   startPoint: .top, endPoint: .bottom))
    }
}

struct Pronouns_Previews: PreviewProvider {
    static var previews: some View {
        Pronouns()
    }
}
