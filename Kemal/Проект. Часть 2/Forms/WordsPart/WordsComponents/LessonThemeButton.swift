import SwiftUI

struct LessonThemeButton: View {
    
    @State var theme_name:String
    @State var words_count:String
    @State var image_name:String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: -20) {
            VStack(alignment: .leading) {
                Text(theme_name)
                    .foregroundColor(.black)
                    .font(.system(size: 19).bold())
                Text(words_count)
                    .foregroundColor(.gray)
            }.padding()
            
            HStack {
                promViewLesson(starSize: 20, spacing: 1)
                
                Spacer()
                
                Image(image_name)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.black)
            }
            .padding()
        }
        .frame(maxWidth: 200)
        .background(Color("lightGray"))
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 5)
    }
}

struct LessonThemeButton_Previews: PreviewProvider {
    static var previews: some View {
        LessonThemeButton(theme_name: "В ресторане",
                          words_count: "35 слов",
                          image_name: "restaurant")
        .environmentObject(FormsViewModel())
    }
}
