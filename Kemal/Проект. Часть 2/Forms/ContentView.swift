import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: FormsViewModel
    @State var progress: CGFloat = 0
    @State var showInfo = false
    
    var content: some View {
        
        ZStack {
            VStack(spacing: 15) {
                
                Text("  ")
                HStack(spacing: -5) {
                    Button {
                        viewModel.isRunning.toggle()
                    } label: {
                        Image(systemName: "pause")
                            .font(.system(size: 20).bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: 40, maxHeight: 40)
                            .background(Color.gray)
                            .cornerRadius(12)
                    }
                    .padding(.vertical, 20)
                    .padding()
                    
                    Text("\(viewModel.counter_of_right_answer) / 5")
                        .font(.system(.title3).bold())
                        .foregroundColor(.white)
                    Spacer()
                }
                
//                HStack(spacing: 18) {
//                    GeometryReader { proxy in
//                        ZStack(alignment: .leading) {
//                            Capsule()
//                                .fill(.gray.opacity(0.25))
//                            Capsule()
//                                .fill(Color.green)
//                                .frame(width: proxy.size.width * progress)
//                        }
//                    }
//                    .frame(height: 20)
//                    Button {
//
//                    } label: {
//                        Image(systemName: "suit.heart.fill")
//                            .font(.title3)
//                            .foregroundColor(.red)
//                    }
//                }
//                .padding()
//
//                ProgressView(value: Double(progress) / 5.0)
//                    .tint(.green)
//                    .padding()
                
                Spacer()
                
                Text(viewModel.question.question_translate)
                    .multilineTextAlignment(.center)
                    .font(.custom("Avenir", size: 22).bold())
                    .foregroundColor(.yellow)
                
                Text(viewModel.question.question)
                    .multilineTextAlignment(.center)
                    .font(.custom("Avenir", size: 26).bold())
                    .foregroundColor(.white)
                
                Spacer()
                
                ForEach(viewModel.question.choices, id: \.self) { choice in
                    ButtonCell(choice: choice)
//                    self.progress = CGFloat(viewModel.formsBrain.index)
                }
                Spacer()
            }
            .background(Image("pic2").blur(radius: 10)).ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            
            
            
            
            
            if !viewModel.isRunning {
                VStack(spacing: 15) {
                    HStack(spacing: -5) {
                        Button {
                            viewModel.isRunning.toggle()
                        } label: {
                            Image(systemName: "clear")
                                .font(.system(size: 20).bold())
                                .foregroundColor(.white)
                                .frame(maxWidth: 40, maxHeight: 40)
                                .background(Color.gray)
                                .cornerRadius(12)
                        }
                        .padding(.vertical, 20)
                        .padding()
                        Text("Пауза")
                            .font(.system(.title3).bold())
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 13) {
                        
                        Button(action: viewModel.resetTest) {
                            ButtonSettings(text: "Начать сначала",
                                           color: .white)
                        }
                        NavigationLink(destination: ModalVerbs()) {
                            ButtonSettings(text: "Читать правило",
                                           color: .white)
                        }
                        Button {
                            showInfo.toggle()
                        } label: {
                            ButtonSettings(text: "Инструкция",
                                           color: .white)
                        }
                        Button {
                            viewModel.isRunning.toggle()
                        } label: {
                            ButtonSettings(text: "Продолжить",
                                           color: .yellow)
                        }
                    }
                    Spacer()
                }
                .sheet(isPresented: $showInfo) {
                    InstructionForTestView()
                }
                .background(Image("pic7").blur(radius: 20)).ignoresSafeArea()
            }
        }
        
//        let progress = (droppedCount / CGFloat(characters.count))
        //        withAnimation {
        //            item.isShowing = true
        //            updateShuffledArray(character: item)
        //        }
        //        self.progress = progress
        
    }
    var body: some View {
        VStack {
            if viewModel.gameOver {
                FormTestResultView()
            } else {
                content
            }
        }
    }
}

struct ButtonCell: View {
    
    @State var new_button_color = Color.white
    @EnvironmentObject var viewModel: FormsViewModel
    
    let choice: String
    var body: some View {
        
        Button {
            let result = viewModel.checkAnswer(choice)
            new_button_color =  result ? .green : .red
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                new_button_color = .white
                viewModel.nextQuestions()
            }
        } label: {
            ButtonSettings(text: choice,
                           color: new_button_color)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(FormsViewModel())
            .previewInterfaceOrientation(.portrait)
    }
}
