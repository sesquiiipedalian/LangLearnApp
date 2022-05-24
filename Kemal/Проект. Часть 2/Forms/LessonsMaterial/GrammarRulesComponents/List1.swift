import SwiftUI

struct List1: View {
    
    @State var header: String
    @State var text11: String
    @State var text12: String
    
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
        }
        .padding()
        .frame(width: 350, alignment: .center)
        
        .background(.white)
        .cornerRadius(14)
    }
}

struct List1_Previews: PreviewProvider {
    static var previews: some View {
        List1(header: "Form", text11: "For", text12: "Test")
    }
}
