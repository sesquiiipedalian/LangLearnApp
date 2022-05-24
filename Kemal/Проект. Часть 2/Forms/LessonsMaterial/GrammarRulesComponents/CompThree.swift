import SwiftUI

struct CompThree: View {
    @State var text1: String
        @State var text2: String
        
        var body: some View {
            
            VStack (alignment: .leading, spacing: -5) {
                Text(text1)
                    .font(.system(size: 17))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 30)
                Text(text2)
                    .font(.system(size: 15))
                    .foregroundColor(Color.gray)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 30)
            }
            .padding()
            .frame(width: 350, height: 60, alignment: .leading)
            .background(.white)
            .cornerRadius(14)
        }
}

struct CompThree_Previews: PreviewProvider {
    static var previews: some View {
        CompThree(text1: "First", text2: "Second")
    }
}
