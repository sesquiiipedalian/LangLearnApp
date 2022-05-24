import SwiftUI

struct AllGrammarThemes: View {
    
    @EnvironmentObject var viewModel: FormsViewModel
    
    // приходит с firebase
    let junior = [Lesson(title: "Present Simple",
                         subtitle: "Настоящее время",
                         words: ["I do", "We read"]),
                  Lesson(title: "Future Simple",
                         subtitle: "Будущее время",
                         words: ["I will", "They won't"]),
                  Lesson(title: "Modal Verbs",
                         subtitle: "Глагол to be",
                         words: ["I do", "We read"])]
    let middle = [Lesson(title: "Modal Verbs",
                         subtitle: "Хотел бы",
                         words: ["Would you like", "wouldn't"]),
                  Lesson(title: "Past Simple",
                         subtitle: "Неправильные глаголы",
                         words: ["went", "ment"]),
                  Lesson(title: "Adjectives",
                         subtitle: "Сравнение",
                         words: ["better", "faster"])]
    let senior = [Lesson(title: "Present Continuous",
                         subtitle: "Present Progressive",
                         words: ["I'am hating", "She's crying"]),
                  Lesson(title: "Past Simple",
                         subtitle: "Неправильные глаголы",
                         words: ["went", "ment"]),
                  Lesson(title: "Prepositions",
                         subtitle: "Потому что",
                         words: ["because", "as, so"])]
    
    var title: some View {
        VStack(alignment: .leading) {
            Text("Грамматика")
                .font(.system(size: 40).bold())
            
            Text("Здесь можно потренировать правила и заработать звёзды")
                .font(.system(size: 15).bold())
                .lineLimit(3)
        }
        .foregroundColor(Color("lightGray"))
        .padding(.horizontal, 27)
    }
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    title
                    
                    LevelView(title: ("Начальный"), lessons: junior)
                    LevelView(title: ("Средний"), lessons: middle)
                    LevelView(title: ("Продвинутый"), lessons: senior)
                }
            }
            .navigationBarHidden(true)
            .background(LinearGradient(
                colors:[Color("blue1"),Color("blue2")],
                startPoint: .top, endPoint: .bottom))
        }
    }
}

struct LevelView: View {
    var title: String
    var lessons: [Lesson]
    var body: some View {
        VStack(alignment: .leading,spacing: 13) {
            Text(title)
                .foregroundColor(Color("lightGray"))
                .font(.system(size: 23).bold())
                .cornerRadius(12)
                .padding(.horizontal, 27)
            ForEach(lessons) { lesson in
                
                NavigationLink(destination: ModalVerbs()) {
                    LessonButton(lesson: lesson)
                }
            }
        }
    }
}

struct AllGrammarThemes_Previews: PreviewProvider {
    static var previews: some View {
        AllGrammarThemes()
            .environmentObject(FormsViewModel())
    }
}
