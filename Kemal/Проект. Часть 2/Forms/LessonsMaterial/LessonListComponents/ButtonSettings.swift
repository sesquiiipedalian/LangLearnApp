//
//  ButtonSettings.swift
//  Forms
//
//  Created by Азамат Кемал on 22.05.2022.
//

import SwiftUI

struct ButtonSettings: View {
    
    var text: String
    var color: Color
    
    var body: some View {
        
        
        Text(text)
            .font(.custom("Avenir", size: 22).bold())
            .foregroundColor(.black)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.vertical, 15)
            .background(color)
            .cornerRadius(16)
            .padding(.horizontal, 45)
            .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 5)
    }
}

struct ButtonSettings_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSettings(text: "Название кнопки",
                       color: .red)
    }
}
