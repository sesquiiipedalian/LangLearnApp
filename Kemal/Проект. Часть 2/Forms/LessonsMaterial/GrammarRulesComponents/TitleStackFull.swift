import SwiftUI

struct TitleStackFull: View {
    
    @State var text1: String
    @State var text2: String
    @State var text3: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "graduationcap.circle.fill")
                .resizable(resizingMode: .stretch)
                .frame(width: 40, height: 40)
                .foregroundColor(.black)
            
            Text(text1)
                .font(.system(size: 20))
                .foregroundColor(Color(hue: 1.0, saturation: 0.146, brightness: 0.264))
                .bold()
                .frame(width: .infinity, height: 25)
                .lineLimit(2)
            
            Text(text2)
                .multilineTextAlignment(.leading)
                .font(.system(size: 35).bold())
                .lineLimit(nil)

            
            
            TitleStack(text: text3)
        }
    }
}

struct TitleStackFull_Previews: PreviewProvider {
    static var previews: some View {
        TitleStackFull(text1: "Hello",
                       text2: "My name is Azamat Azamat Azamat",
                       text3: "Azamat")
    }
}
