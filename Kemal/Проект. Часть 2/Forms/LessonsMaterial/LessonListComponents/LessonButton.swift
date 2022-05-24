import SwiftUI

struct LessonButton: View {
  
  let lesson: Lesson
  
  var body: some View {
    HStack {
      VStack(alignment: .leading, spacing: 7) {
        
        Text(lesson.subtitle)
          .foregroundColor(.gray)
        Text(lesson.title)
          .foregroundColor(.black)
          .font(.system(size: 19).bold())
        
        HStack {
          ForEach(lesson.words, id: \.self) { word in
            
            Text(word)
              .foregroundColor(.white)
              .padding(.horizontal, 10)
              .padding(.vertical, 0.5)
              .background(Color("persic1"))
              .cornerRadius(12)
          }
        }
      }
      Spacer()
      promViewLesson(starSize: 22, spacing: 1)
    }
    .padding(.horizontal)
    .frame(maxWidth: .infinity, alignment: .leading)
    .padding(.vertical, 10)
    .background(Color("lightGray"))
    .cornerRadius(20)
    .padding(.horizontal)
    .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 5)
  }
}

struct LessonButton_Previews: PreviewProvider {
  static var previews: some View {
    LessonButton(lesson: Lesson(title: "Present Simple", subtitle: "Настоящее время", starCount: 0, words: ["I do", "We read"]))
      .environmentObject(FormsViewModel())
    
  }
}
