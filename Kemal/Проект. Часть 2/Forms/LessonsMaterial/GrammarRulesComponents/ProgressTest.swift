//
//  ProgressTest.swift
//  Forms
//
//  Created by Азамат Кемал on 23.05.2022.
//

import SwiftUI

struct ProgressTest: View {
    var body: some View {
        
        Capsule()
            .frame(width: 200, height: 20)
            .foregroundColor(.gray)

            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Capsule())
//        ProgressView(value: 0.6)
//            .padding(.horizontal, 50)
//            .tint(.red)
            
    }
}

struct ProgressTest_Previews: PreviewProvider {
    static var previews: some View {
        ProgressTest()
    }
}
