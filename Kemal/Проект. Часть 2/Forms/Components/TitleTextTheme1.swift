import SwiftUI

struct TitleTextTheme1: View {
    
    @State var text: String
    
    var body: some View {
        Text(text)
            .font(.custom("Avenir", size: 22))
            .frame(maxWidth: .infinity)
            .foregroundColor(.black)
            .font(.title3.bold())
            .cornerRadius(12)
    }
}

struct TitleTextTheme1_Previews: PreviewProvider {
    static var previews: some View {
        TitleTextTheme1(text: "Hello")
    }
}
