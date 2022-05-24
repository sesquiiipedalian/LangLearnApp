import SwiftUI

struct OtherTitleTypes: View {
    var body: some View {
        VStack {
            Text("Hello,") + Text(" world of the new text for our lesson").bold().foregroundColor(.red)
            + Text(" it is very crazy")
            
            Text("Some text of blablabla **for example**")
        }
    }
}

struct OtherTitleTypes_Previews: PreviewProvider {
    static var previews: some View {
        OtherTitleTypes()
    }
}
