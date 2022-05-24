import SwiftUI

struct ToBe: View {
    
    var body: some View {
        NavigationView {
            content
                .navigationBarHidden(true)
        }
    }
        
    var content: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                
                Group {
                    Image(systemName: "graduationcap.circle.fill")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                    
                    Text("To be")
                        .font(.system(size: 20))
                        .foregroundColor(Color(hue: 1.0, saturation: 0.146, brightness: 0.264))
                        .bold()
                        .frame(width: 50, height: 25)
                    
                    Text("Am, is, are")
                        .font(.system(size: 35))
                        .bold()
                        .frame(width: .infinity, height: 25)
                    
                    TitleStack(text: "У глагола to be есть разные формы. Какую выбрать зависит от того, о чём речь. Если говоришь о себе, то используй am: ")
                }
                
                Group {
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
                    
//                    moveNextTestButton()
                }
            }
        }
        .padding(.horizontal, 32)
        
        .background(LinearGradient(colors: [Color("grammar.material.light"), Color.gray], startPoint: .top, endPoint: .bottom))
        
    }
}

struct ToBe_Previews: PreviewProvider {
    static var previews: some View {
        ToBe()
    }
}
