import SwiftUI

struct TitleStack: View {
    
    @State var text: String
    
    var body: some View {
        
        Text(text)
            .font(.system(size: 17))
            .bold()
            .frame(maxHeight: .infinity)
            .frame(width: 350, alignment:
                    .topLeading)
            .lineLimit(.none)
    }
}

struct TitleStack_Previews: PreviewProvider {
    static var previews: some View {
        TitleStack(text: "Text")
    }
}
