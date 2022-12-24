//
//  ContentView.swift
//  timetable
//
//  Created by Михаил Король on 25.01.2022.
//

import SwiftUI
import Foundation



struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        let drag = DragGesture()
                    .onEnded {
                        if $0.translation.width < -100 {
                                            withAnimation {
                                                self.showMenu = false
                                            }
                        }}
                NavigationView{
            Form {
                Section {
                    
                    Text("Добро пожаловать в ежедневник!")
                    
            }
        }
            .navigationTitle("Ежедневник")
                    
    }
        ZStack(alignment: .leading) {
                                GeometryReader { geometry in
                                        MainView(showMenu: self.$showMenu)
                                                   .frame(width: geometry.size.width, height: geometry.size.height)
                                                   .offset(x:self.showMenu ? geometry.size.width/4*3 : 0)
                                                   .disabled(self.showMenu ? true : false)
                        if self.showMenu{
                            MenuView()
                                .frame(width: geometry.size.width/4*2.7)
                        }
                                }}
        .gesture(drag)
    }}

struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            self.showMenu = true
        }) {
            Text("Mеню")
        }
    }
}

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                            Image(systemName: "person")
                                .foregroundColor(.gray)
                                .imageScale(.large)
                            Text("Вы")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                            .padding(.top, 100)
                        HStack {
                            Image(systemName: "gear")
                                .foregroundColor(.gray)
                                .imageScale(.large)
                            Text("Настройки")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                            .padding(.top, 30)
                        HStack {
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                                .imageScale(.large)
                            Text("Информация")
                                .foregroundColor(.gray)
                                .font(.headline)
                        }
                .padding(.top, 30)
        HStack {
            
        }
        .padding(.top,556)
                    }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
