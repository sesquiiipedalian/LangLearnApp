import SwiftUI

struct CompFour: View {
    var body: some View {
        VStack(spacing: 15) {
            VStack {
                Text("Эти действия потворяются:")
                    .underline()
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .frame(height: 30)
                
                
                CompFourOne (text1: "ежедневно",
                             text2: "every day")
            }
            CompFourOne (text1: "каждое утро",
                         text2: "every morning")
            CompFourOne (text1: "каждый вечер",
                         text2: "every evening")
            CompFourOne (text1: "каждый год",
                         text2: "every year")
            CompFourOne (text1: "по выходным",
                         text2: "at weeknds")
        }
        .padding()
        
        .background(.white)
        .cornerRadius(14)
    }
}

struct CompFour_Previews: PreviewProvider {
    static var previews: some View {
        CompFour()
    }
}
