//
//  PromLessonView.swift
//  Forms
//
//  Created by Азамат Кемал on 23.05.2022.
//

import SwiftUI

struct PromLessonView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                Spacer()
                Text("Present Simple")
                    .font(.system(size: 20))
                    .foregroundColor(Color("lightGray"))
                Text("Настоящее Время")
                    .font(.system(size: 33).bold())
                    .foregroundColor(Color("lightGray"))
                
                HStack {
                    Text("I do")
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 0.5)
                        .background(Color("persic1"))
                        .cornerRadius(12)
                    
                    Text("We read")
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 0.5)
                        .background(Color("persic1"))
                        .cornerRadius(12)
                }
                Spacer()
                promViewLesson(starSize: 40, spacing: 1)
                Spacer()
                ButtonSettings(text: "Читать правило", color: .white)
                ButtonSettings(text: "Поехали", color: .yellow)
            
            }
            .background(Image("pic7").blur(radius: 20))
        }
    }
}

struct PromLessonView_Previews: PreviewProvider {
    static var previews: some View {
        PromLessonView()
            .environmentObject(FormsViewModel())
    }
}
