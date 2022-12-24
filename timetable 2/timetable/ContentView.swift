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
    let bred = Color(red:125, green: 14 , blue: 14)
    
    var body: some View {
        NavigationView{
    Form {
        Section {
            Text("8:30 - 9:15")
                .font(.system(size: 12, weight: .light))
            Text("1. Информатика")//.tabItem { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Item Label@*/Text("Label")/*@END_MENU_TOKEN@*/ }
            
            
    }
}
    .navigationTitle("Ежедневник")
    .navigationBarItems(leading: (
                        Button(action: {
                            withAnimation {
                                self.showMenu.toggle()
                            }
                        }) {
                            Image(systemName: "line.horizontal.3")
                                .imageScale(.large)
                                .foregroundStyle(.black)
                                
                        }
                    ))
            
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
        .background(Color(red: 230/255, green: 230/255, blue: 230/255))
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

