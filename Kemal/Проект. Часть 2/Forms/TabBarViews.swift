//
//  TabBarViews.swift
//  Forms
//
//  Created by Азамат Кемал on 23.05.2022.
//

import SwiftUI

struct TabBarViews: View {
    
//    var viewModel: MainTabBarViewModel
    
    var body: some View {
        
        // Создаём саму форму
        TabView {
            AllGrammarThemes()
                .tabItem {
                    VStack {
                        Image(systemName: "brain.head.profile")
                        Text("Грамматика")
                    }
                }
            WordsMainView()
                .tabItem {
                    VStack {
                        Image(systemName: "graduationcap.fill")
                        Text("Слова")
                    }
                }
            WordsContent()
                .tabItem {
                    VStack {
                        Image(systemName: "brain")
                        Text("Brain")
                    }
                }
            
            MainProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Профиль")
                    }
                }
        }
    }
}

struct TabBarViews_Previews: PreviewProvider {
    static var previews: some View {
        TabBarViews()
            .environmentObject(FormsViewModel())
    }
}
