import SwiftUI

struct DefaultTitle: View {
    
    @State var text: String
    
    var body: some View {
    
        
        Text(text)
            .font(.system(size: 17))
            .lineLimit(nil)
    }
}

struct DefaultTitle_Previews: PreviewProvider {
    static var previews: some View {
        DefaultTitle(text: "Some text for test")
    }
}
