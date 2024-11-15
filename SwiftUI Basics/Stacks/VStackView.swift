//
//  VStackView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(systemName: "person")
            VStack(alignment: .leading, spacing: 10) {
                Text("Title")
               // Spacer()
                Text("SubTitle")
            }.padding(.all, 20)
                .background(Color.yellow)
        }.padding(.all, 20)
            .background(Color.blue.opacity(0.7))
            .cornerRadius(10)
    }
}

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
