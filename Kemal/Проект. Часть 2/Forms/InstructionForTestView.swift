import SwiftUI

struct InstructionForTestView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                
                HStack {
                    Text("Инструкция")
                        .font(.custom("Avenir", size: 30).bold())
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity,alignment: .center)
                    .padding()
                    Image("")
                }
                
                Text("Формат контроля знаний - тест. \nВам будут даны вопросы на английском языке и перевод на русском. Среди вариантов ответа правильный. ")
                    .font(.custom("Avenir", size: 22).bold())
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .lineLimit(nil)
            }
            .background(.white)
            .cornerRadius(20)
            .padding()
        }.background(Image("pic2"))
    }
}

struct InstructionForTestView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionForTestView()
    }
}
