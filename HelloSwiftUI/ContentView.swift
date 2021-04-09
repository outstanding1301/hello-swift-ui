//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 송인걸 on 2021/04/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            MyVStackView(1,2,3)
            MyVStackView(4,5,6)
            MyVStackView(7,8,9)
        }
        .padding(10)
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
