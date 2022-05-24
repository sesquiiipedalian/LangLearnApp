import SwiftUI


struct WordsContent: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            WordsHome()
        }
    }
}

struct WordsContent_Previews: PreviewProvider {
    static var previews: some View {
        WordsContent()
    }
}
