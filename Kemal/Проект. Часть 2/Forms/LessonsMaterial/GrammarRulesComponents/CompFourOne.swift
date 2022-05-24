import SwiftUI

struct CompFourOne: View {
    @State var text1: String
    @State var text2: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(text1)
                .font(.system(size: 17))
                .lineLimit(nil)
            
            Spacer()
            
            Text(text2)
                .multilineTextAlignment(.trailing)
                .font(.system(size: 17).bold())
                .lineLimit(nil)
        }
        .padding(.horizontal)
        .frame(width: .none)
    }
}

struct CompFourOne_Previews: PreviewProvider {
    static var previews: some View {
        CompFourOne(text1: "Hello Hello Hello Hello",
                    text2: "Vladislav Vladislav Vladislav")
    }
}
