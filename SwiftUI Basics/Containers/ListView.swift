//
//  ListView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct ListView: View {
    var colors = [ColorInfo(color: .red, name: "Red"),
                  ColorInfo(color: .blue, name: "Blue"),
                  ColorInfo(color: .yellow, name: "Yellow"),
                  ColorInfo(color: .purple, name: "Purple"),
                  ColorInfo(color: .green, name: "Green"),
                  ColorInfo(color: .gray, name: "Gray"),
                  ColorInfo(color: .orange, name: "Orange"),
                  ColorInfo(color: .black, name: "Black"),
                  ColorInfo(color: .brown, name: "Brown"),
                  ColorInfo(color: .indigo, name: "Indigo"),
                  ColorInfo(color: .mint, name: "Mint"),
                  ColorInfo(color: .pink, name: "Pink")]
    var body: some View {
        
        // Static List Declaration
        List {
            HStackView()
            HStackView()
            HStackView()
        }
        
        List {
            ForEach(0..<10) { index in
                HStackView()
                    .listRowInsets(EdgeInsets())
            }
        }
        
        // Dynamic List Declarartion
        List(colors, id: \.name) { color in
            VStack {
                Text(color.name)
                    .foregroundColor(color.color)
                Rectangle()
                    .frame(height: 50)
                    .foregroundColor(color.color)
            }
        }
        
    }
}

struct ColorInfo {
  var color: Color
  var name: String
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
