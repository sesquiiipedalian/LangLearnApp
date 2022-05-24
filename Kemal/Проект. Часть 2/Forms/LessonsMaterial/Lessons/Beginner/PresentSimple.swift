import SwiftUI

struct PresentSimple: View {
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                TitleStackFull(text1: "Present Simple",
                               text2: "Что, как, когда?",
                               text3: "Каждый человек совершает какие-то действия регулярно: просыпается, одевается, завтракает, идёт на работу, читает, пишет.")
                
                Group {
                    
                    CompFour()
                    
                    CompThree(text1: "Hi! I am Max.",
                              text2: "Привет, я Макc")
                    
                    TitleStack(text: "Если речь идёт о каком-то предмете, то ставь is:")
                    
                    CompThree(text1: "My luggage is here.",
                              text2: "Мой багаж здесь.")
                    
                    TitleStack(text: "Если предметов больше одного, то ставьте are:")
                    
                    CompTwo(text1: "My sutcases are black.",
                            text2: "Мои чемоданы чёрные.",
                            text3: "They are big.",
                            text4: "Они большие.")
                    
                    TitleStack(text: "Если нужно указать на что-то, то используй it is или this is - это:")
                    
                    CompTwo(text1: "It is my bag.",
                            text2: "Это моя сумка",
                            text3: "This is my flight.",
                            text4: "Это мой рейс.")
                    
                    TitleStack(text: "Теперь ты выкрутишься из любой ситуации с багажом.")

                }
//                moveNextTestButton()
            }
        }
        .padding(.horizontal, 32)
        
        .background(LinearGradient(colors: [Color("light red"), Color.gray], startPoint: .top, endPoint: .bottom))
    }
}

struct PresentSimple_Previews: PreviewProvider {
    static var previews: some View {
        PresentSimple()
    }
}
