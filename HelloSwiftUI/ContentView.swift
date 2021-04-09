//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 송인걸 on 2021/04/09.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVStackView(1,2,3,Color.red,$isActivated)
                    MyVStackView(4,5,6,Color.red,$isActivated)
                    MyVStackView(7,8,9,Color.red,$isActivated)
                }
                .padding(isActivated ? 30 : 10)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    print("HStack clicked!")
                    
                    withAnimation {
                        self.isActivated.toggle()
                    }
                }
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                .padding(.top, 50)
                
                HStack {
                    NavigationLink(destination: MyWebView(urlToLoad: "https://dowo.pw")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                        Text("dowo")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://outstanding1301.github.io")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                        Text("블로그")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebView(urlToLoad: "https://owob.pw")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)) {
                        Text("owob")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                }
                .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
