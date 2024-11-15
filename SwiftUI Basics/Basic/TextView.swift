//
//  TextView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .padding()
            .foregroundColor(Color.blue)
            .font(.custom("DMSans-Bold", size: 20))
            .background(Color.yellow)
            .cornerRadius(10)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
