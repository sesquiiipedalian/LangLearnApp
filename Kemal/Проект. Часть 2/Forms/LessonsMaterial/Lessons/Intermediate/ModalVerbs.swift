import SwiftUI

struct ModalVerbs: View {
    
    @State var show = false
    
    var body: some View {
        VStack {
            if show {
                ContentView()
                    .ignoresSafeArea()
            } else {
                content
            }
        }
    }
    
    var content: some View {

        ScrollView {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Group {
                    TitleStackFull(text1: "А вы бы хотели?",
                                   text2: "Would you like?",
                                   text3: "Сегодня ты узнаешь, как ненавязчиво предложить сходить в кино и поужинать вместе. Как предложить гостям чаю. Сегодня ты поднимешь свою тактичность на новый уровень!")
                    Spacer()
                    TitleStack(text: "Would like = Хотел бы")
                    
                    DefaultTitle(text: "Это выражение используется в кафе, в офисах, и даже на свидании. Это вежливый вариант слова want(хочу)")
                    
                    DefaultTitle(text: "Как и где использовать?")

 
                }
                
                Group {
                    VStack(alignment: .leading, spacing: -2) {
                        TitleStack(text: "1. Хотим предмет/действие.")
                        DefaultTitle(text: "Я хотел бы выпить кофе.")
                    }
                    
                    TitleStack(text: "Действующее лицо + would like + a/the предмет")
                    
                    CompThree(text1: "I would like a cap of tea.",
                              text2: "Я бы хотел чашечку кофе.")
                    
                    
                    CompThree(text1: "He would like this book.",
                              text2: "Привет, я Макc")
                    
                    CompThree(text1: "They would like this cake.",
                              text2: "Они хотели бы торт")
                }
                
                Group {
                    VStack(alignment: .leading, spacing: -2) {
                        TitleStack(text: "2. Хотим сделать что-либо.")
                        DefaultTitle(text: "Я хотел бы встретиться с друзьями.")
                        TitleStack(text: "Действующее лицо + would like + to + действие")
                    }
                    
                    CompTwo(text1: "I would like to meet my friends.",
                            text2: "Я бы хотел встретиться друзьями.",
                            text3: "She would like to order.",
                            text4: "Она хотела бы сделать заказ.")
                    
                    TitleStack(text: "Не путай like и would like!")
                    
                    List5(header: "like / would like",
                          text11: "Would you like some juice?",
                          text12: "Не хотите сок?",
                          text21: "Do you like juice?",
                          text22: "Вам нравится сок?",
                          text31: "I'd like a cake, please",
                          text32: "Я бы хотел торт, если можно.",
                          text41: "What would you like to do?",
                          text42: "Чем бы вы хотели заняться? ",
                          text51: "What do you like to do?",
                          text52: "Что вам нравится делать?")
                }
                MoveNextTestButton(show: $show)
            }
        }
        .padding(.horizontal, 32)
        .navigationBarHidden(true)
        .background(LinearGradient(colors: [Color("light red"), Color.indigo], startPoint: .top, endPoint: .bottom))
    }
}

struct ModalVerbs_Previews: PreviewProvider {
    static var previews: some View {
        ModalVerbs()
    }
}
