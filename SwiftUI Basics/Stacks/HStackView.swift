//
//  HStackView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack(spacing: 15) {
            Text("PurpleTalk")
            Spacer()
            Image(systemName: "person")
        }.padding(.all, 20)
            .background(Color.yellow)
            .cornerRadius(10)
            .padding()
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}
