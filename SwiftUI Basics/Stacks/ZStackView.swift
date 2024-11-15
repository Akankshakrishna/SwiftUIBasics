//
//  ZStackView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct ZStackView: View {
    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]
    var body: some View {
        ZStack {
            ForEach(0..<colors.count) {
                Rectangle()
                    .fill(colors[$0])
                    .frame(width: 100, height: 100)
                    .offset(x: CGFloat($0) * 10.0,
                            y: CGFloat($0) * 10.0)
            }
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
