//
//  ImageView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        // System images
        Image(systemName: "person")
            .resizable()
            .frame(width: 50, height: 50)
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)
        
        // Other images
        Image("shinchan")
            .resizable()
            .frame(width: 150, height: 150)
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
