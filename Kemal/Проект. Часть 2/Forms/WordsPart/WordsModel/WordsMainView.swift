//
//  WordsMainView.swift
//  Forms
//
//  Created by Азамат Кемал on 23.05.2022.
//

import SwiftUI

struct WordsMainView: View {
    var body: some View {
        
        VStack(spacing: 30) {
            VStack(alignment: .leading) {
                Text("Грамматика")
                    .foregroundColor(Color("lightGray"))
                    .font(.system(size: 40).bold())
                    .cornerRadius(12)
                
                Text("Здесь можно потренировать правила")
                    .foregroundColor(Color("lightGray"))
                    .font(.system(size: 15).bold())
                    .cornerRadius(12)
                    .lineLimit(nil)
                Text("и заработать звёзды")
                    .foregroundColor(Color("lightGray"))
                    .font(.system(size: 15).bold())
                    .cornerRadius(12)
                    .lineLimit(nil)
            }
            .frame(height: 70, alignment: .leading)
            
            
            ScrollView(.horizontal) {
                HStack(spacing: 30) {
                    Spacer()
                    
                    NavigationLink(destination: WordsContent()) {
                        LessonThemeButton(theme_name: "В ресторане",
                                          words_count: "30 слов",
                                          image_name: "restaurant")
                    }
                    
                    LessonThemeButton(theme_name: "IELTS",
                                      words_count: "25 слов",
                                      image_name: "restaurant")
                    
                    LessonThemeButton(theme_name: "В музее",
                                      words_count: "45 слов",
                                      image_name: "restaurant")
                }.frame(width: .infinity)
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 30) {
                    Spacer()
                    LessonThemeButton(theme_name: "В аэропорту",
                                      words_count: "30 слов",
                                      image_name: "restaurant")
                    
                    LessonThemeButton(theme_name: "В отеле",
                                      words_count: "25 слов",
                                      image_name: "restaurant")
                    
                    LessonThemeButton(theme_name: "В метро",
                                      words_count: "45 слов",
                                      image_name: "restaurant")
                }.frame(width: .infinity)
            }
        }
        .background(Image("pic1").blur(radius: 20))
    }
}

struct WordsMainView_Previews: PreviewProvider {
    static var previews: some View {
        WordsMainView().environmentObject(FormsViewModel())
    }
}
