//
//  Scrollview.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct Scrollview: View {
    var colors: [Color] = [.blue, .red, .yellow, .pink]
    @State private var selectedColor = 0
    
    var body: some View {
        // Vertical Scrolling
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                ForEach(0..<colors.count) { index in
                    Rectangle().frame(width: 300, height: 300)
                        .foregroundColor(self.colors[index])
                }
            }
        }
        
        // Horizontal Scrolling
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(0..<colors.count) { index in
                    Rectangle().frame(width: 300, height: 300)
                        .foregroundColor(self.colors[index])
                }
            }.frame(height: 600)
        }
    }
}

struct Scrollview_Previews: PreviewProvider {
    static var previews: some View {
        Scrollview()
    }
}
