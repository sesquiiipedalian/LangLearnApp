import SwiftUI

struct CompTwo: View {
    @State var text1: String
    @State var text2: String
    @State var text3: String
    @State var text4: String
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: -5) {
            Text(text1)
                .font(.system(size: 17))
                .bold()
                .frame(width: .infinity, height: 30)
            Text(text2)
                .font(.system(size: 15))
                .foregroundColor(Color.gray)
                .bold()
                .frame(width: .infinity, height: 30)
            Text(text3)
                .font(.system(size: 17))
                .bold()
                .frame(width: .infinity, height: 30)
            Text(text4)
                .font(.system(size: 15))
                .foregroundColor(Color.gray)
                .bold()
                .frame(width: .infinity, height: 30)
        }
        .padding()
        .frame(width: 350, height: 110, alignment: .leading)
        .background(.white)
        .cornerRadius(14)
    }
}

struct CompTwo_Previews: PreviewProvider {
    static var previews: some View {
        CompTwo(text1: "First",
                text2: "Second",
                text3: "Third",
                text4: "Fourth")
    }
}
