import SwiftUI

@main
struct FormsApp: App {
    
    @StateObject var viewModel = FormsViewModel()
    
    var body: some Scene {
        WindowGroup {
            //      ContentView()
//            WordsContent()
            TabBarViews()
                .environmentObject(viewModel)
        }
    }
}
