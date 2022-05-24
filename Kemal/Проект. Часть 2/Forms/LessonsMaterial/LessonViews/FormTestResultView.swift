import SwiftUI

struct FormTestResultView: View {
    
    @EnvironmentObject var viewModel: FormsViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 150.0) {
            
            ButtonSettings(text: "Вы набрали \(viewModel.counter_of_right_answer) баллов из 5", color: .yellow)
            Button {
                viewModel.resetTest()
                dismiss()
            } label: {
                ButtonSettings(text: "Учить дальше", color: .yellow)
            }

        }
        .background(Image("pic2")
            .blur(radius: 20)
            .ignoresSafeArea())
        .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 5)
    }
}

struct FormTestResultView_Previews: PreviewProvider {
    static var previews: some View {
        FormTestResultView()
            .environmentObject(FormsViewModel())
    }
}
