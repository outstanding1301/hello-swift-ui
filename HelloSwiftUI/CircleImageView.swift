//
//  CircleImageView.swift
//  HelloSwiftUI
//
//  Created by 송인걸 on 2021/04/09.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        VStack {
            Image("kitten")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 128, height: 128)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(color: .gray, radius: 5, x: 3, y: 3)
                .overlay(Circle().stroke(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.purple]), startPoint: /*@START_MENU_TOKEN@*/.bottomLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.topTrailing/*@END_MENU_TOKEN@*/), lineWidth: 5)
                )
                .overlay(Circle().stroke(Color.black, lineWidth: 2).padding(3)
                )
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("송인걸")
                .font(.system(size: 30))
                .lineLimit(1)
                .frame(width: 128)
        }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
