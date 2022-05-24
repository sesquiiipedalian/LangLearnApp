//
//  MainProfileView.swift
//  Forms
//
//  Created by Азамат Кемал on 23.05.2022.
//

import SwiftUI

struct MainProfileView: View {
    @State var isAvaAlertPresented = false
    @State var isQuitAlertPresented = false
    @State var isAuthAlertPresented = false
    
    @State private var downloadAmount = 0.0
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            HStack(spacing: 16) {
                Image("person")
                    .resizable()
                    .shadow(color: .black, radius: 5, x: 10.0, y: 10.0)
                    .frame(maxWidth: 120, maxHeight: 120)
                    .clipShape(Circle())
                    .padding(8)
                    .onTapGesture {
                        isAvaAlertPresented.toggle()
                    }
                    .confirmationDialog("Откуда взять фотку", isPresented: $isAvaAlertPresented) {
                        Button {
                            print("Library")
                        } label: {
                            Text("Из галереи")
                        }
                        Button {
                            print("Camera")
                        } label: {
                            Text("С камеры")
                        }
                    }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Кемал Азамат")
                        .font(.system(size: 20).bold())
                    Text("kemalazamat165@mail.ru")
                        .font(.system(size: 17).bold())
                }
            }
            
            VStack {
                Text("Уровень английского языка:")
                    .font(.system(size: 23))
                    .bold()
                    .padding()
            }
            VStack(alignment: .leading, spacing: -13) {
                HStack {
                    Text("Уровень 3")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                    Spacer()
                    Text("15 / 27")
                        .font(.system(size: 20))
                        .bold()
                        .padding()
                }
                .background(Color.yellow)
                .cornerRadius(15)
                .padding()
                ProgressView(value: 60, total: 100)
                    .tint(.green)
                    .padding()
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Навыки")
                    .font(.system(size: 25).bold())
                    .padding()
                VStack(alignment: .leading) {
                    HStack {
                        Image("books")
                            .resizable()
                            .frame(width: 80, height: 80)
                        VStack(alignment: .leading) {
                            Text("Слова")
                                .font(.system(size: 20))
                            Text("40")
                                .font(.system(size: 20).bold())
                        }
                    }
                    HStack {
                        Image(systemName: "graduationcap.fill")
                            .resizable()
                            .foregroundColor(.orange)
                            .frame(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            Text("Грамматика")
                                .font(.system(size: 20))
                            Text("34")
                                .font(.system(size: 20).bold())
                        }
                    }.padding()
                }
            }
            .background(Color("lightGray"))
            .cornerRadius(10)
            
            Spacer()
            
            VStack {
                Button {
                    isQuitAlertPresented.toggle()
                } label: {
                    Text("Выйти")
                        .font(.custom("Avenir", size: 18))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(width: 200)
                        .padding(.vertical, 15)
                        .background(.red)
                        .cornerRadius(16)
                        .shadow(color: Color.black.opacity(0.4), radius: 3, x: 0, y: 5)
                }
                .confirmationDialog("Действительно хотите выйти?", isPresented: $isQuitAlertPresented, titleVisibility: .visible) {
                    Button {
                        isAuthAlertPresented.toggle()
                    } label: {
                        Text("Да")
                    }
                }
            }
        }
        .background(Image("pic7").blur(radius: 2))
        .fullScreenCover(isPresented: $isAuthAlertPresented, onDismiss: nil) {
            TabBarViews()
        }
    }
}

struct MainProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MainProfileView()
            .environmentObject(FormsViewModel())
    }
}
