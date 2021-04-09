//
//  MyTextView.swift
//  HelloSwiftUI
//
//  Created by 송인걸 on 2021/04/09.
//

import SwiftUI

struct MyTextView: View {
    
    @Binding
    var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(true)) {
        _isActivated = isActivated
    }
    
    @State
    private var index: Int = 0
    
    // 배경색 배열
    private let backgrounds = [
        Color.red,
        Color.orange,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple
    ]
    
    var body: some View {
        VStack {
            Text("\(backgrounds[self.index].description.capitalized)")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity
                   , minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            
            Spacer()
            Text("\(isActivated ? "activated" : "deactivated")")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
        .background(backgrounds[self.index])
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            withAnimation {
                self.index = (self.index + 1) % backgrounds.count
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
