import SwiftUI

struct List3: View {
    
    @State var header: String
    @State var text11: String
    @State var text12: String
    @State var text21: String
    @State var text22: String
    @State var text31: String
    @State var text32: String
    
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
                         text2: text22)
            CompFourOne (text1: text31,
                         text2: text32)
        }
        .padding()
        .frame(width: 350, alignment: .center)
        
        .background(.white)
        .cornerRadius(14)
    }
}

struct List3_Previews: PreviewProvider {
    static var previews: some View {
        List3(header: "New",
              text11: "Form",
              text12: "For",
              text21: "Test",
              text22: "List of",
              text31: "3 ",
              text32: "Rows")
    }
}
