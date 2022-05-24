import SwiftUI

struct List5: View {
    
    @State var header: String
    @State var text11: String
    @State var text12: String
    @State var text21: String
    @State var text22: String
    @State var text31: String
    @State var text32: String
    @State var text41: String
    @State var text42: String
    @State var text51: String
    @State var text52: String
    
    var body: some View {
        VStack(spacing: 15) {
            VStack {
                Text(header)
                    .underline()
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .frame(height: 30)
                
                CompFourOne (text1: text11,
                             text2: text12)
            }
            CompFourOne (text1: text21,
                         text2: text21)
            CompFourOne (text1: text31,
                         text2: text32)
            CompFourOne (text1: text41,
                         text2: text42)
            CompFourOne (text1: text51,
                         text2: text52)
        }
        .padding()
        .frame(width: 350, alignment: .center)
        
        .background(.white)
        .cornerRadius(14)
    }
}

struct List5_Previews: PreviewProvider {
    static var previews: some View {
        List5(header: "Эти действия потворяются:",
              text11: "ежедневно",
              text12: "every day",
              text21: "каждое утро",
              text22: "every morning",
              text31: "каждый вечер",
              text32: "every evening",
              text41: "каждый год",
              text42: "every year",
              text51: "по выходным",
              text52: "at weeknds")
    }
}
