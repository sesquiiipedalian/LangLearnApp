//
//  TestSettings.swift
//  Forms
//
//  Created by Азамат Кемал on 22.05.2022.
//

import SwiftUI

struct TestSettings: View {
    var body: some View {
        
        NavigationView {
            VStack(spacing: 20) {
                ButtonSettings(text: "Начать сначала",
                               color: .white)
                
                NavigationLink(destination: WordsHome()) {
                    ButtonSettings(text: "Читать правило",
                                   color: .white)
                    .navigationBarHidden(true)
                }
                
                ButtonSettings(text: "Выйти",
                               color: .white)
                ButtonSettings(text: "Продолжить",
                               color: .yellow)
            }
            .background(Image("pic2")).ignoresSafeArea()
        } 
    }
}

struct TestSettings_Previews: PreviewProvider {
    static var previews: some View {
        TestSettings()
    }
}
