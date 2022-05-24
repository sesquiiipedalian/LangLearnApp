import SwiftUI

struct Adjectives: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Group {
                    TitleStackFull(text1: "Такие разные качества",
                                   text2: "Хорошо, лучше, великолепно",
                                   text3: "Мы постоянно сравниваем разные вещи. Что-то лучше, хуже, красивее или легче. Это молоко вкуснее, а это - самое дешёвое. Сейчас ты научишься выбирать и сравнивать. У многих качеств есть 3 степени.")
                }
                
                Group {
                    List3(header: "3 степени",
                          text11: "soft",
                          text12: "мягкий (положительный)",
                          text21: "softer",
                          text22: "мягче (сравнительнее)",
                          text31: "the softest",
                          text32: "мягчайший (превосходная)")
                }
                
                Group {
                    
                    VStack(alignment: .leading, spacing: -2) {
                        Text("Положительная")
                            .foregroundColor(.blue)
                            .font(.system(size: 18).bold())
                        DefaultTitle(text: "Обычное качество предмета.")
                        
                        Spacer()
                        Spacer()
                        
                        List1(header: "Пример",
                              text11: "This car is fast",
                              text12: "Эта машина быстрая.")
                    }
                    
                    VStack(alignment: .leading, spacing: -2) {
                        Text("Сравнительная")
                            .foregroundColor(.green)
                            .font(.system(size: 18).bold())
                        DefaultTitle(text: "Сравнение двух и более предметов.")
                        Spacer()
                        Spacer()
                        List1(header: "Пример",
                              text11: "This car is faster than that car.",
                              text12: "Эта машина быстрее, чем та машина.")
                    }
                    
                    VStack(alignment: .leading, spacing: -2) {
                        Text("Превосходная")
                            .foregroundColor(.purple)
                            .font(.system(size: 18).bold())
                        DefaultTitle(text: "Наивысшая степень качества.")
                        Spacer()
                        Spacer()
                        DefaultTitle(text: "Как образовать?")
                        TitleStack(text: "the + качество + est")
                        Spacer()
                        Spacer()
                        List1(header: "Пример",
                              text11: "cold (холодный)",
                              text12: "the coldest (самый холодный)")
                    }
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
//                moveNextTestButton()
            }
        }
        .padding(.horizontal, 32)
        
        .background(LinearGradient(colors: [Color("grammar.material.light"),
                                            Color("grammar.material.light")],
                                   startPoint: .top, endPoint: .bottom))
    }
}

struct Adjectives_Previews: PreviewProvider {
    static var previews: some View {
        Adjectives()
    }
}
