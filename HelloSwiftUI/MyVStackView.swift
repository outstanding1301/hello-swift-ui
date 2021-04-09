//
//  MyVStackView.swift
//  HelloSwiftUI
//
//  Created by 송인걸 on 2021/04/09.
//

import SwiftUI

struct MyVStackView: View {
    var v1: Int
    var v2: Int
    var v3: Int
    init(_ v1: Int, _ v2: Int, _ v3: Int) {
        self.v1 = v1
        self.v2 = v2
        self.v3 = v3
    }
    var body: some View {
        VStack {
            Text("\(v1)!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("\(v2)!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("\(v3)!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }
        .background(Color.red)
        .padding(1)
    }
}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView(1, 2, 3)
    }
}
