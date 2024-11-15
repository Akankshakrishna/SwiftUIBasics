//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color(.systemMint)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello SwiftUI")
                    .foregroundColor(.white)
                    .font(.custom("DM-Sans", size: 30))
                    .padding()
                    .background(.yellow)
                    .cornerRadius(12)
                HStack(alignment: .top) {
                    Text("Shinchan")
                        .foregroundColor(.white)
                        .font(.custom("DM-Sans", size: 30))
                        .padding(.top)
                    Image("shinchan")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding()
                    .contrast(0.8)
                }.padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray)
                    )
                    .padding()
                Button("Save") {
                    
                }.foregroundColor(.white)
                    .font(.custom("DM-Sans", size: 30))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(.blue)
                    .cornerRadius(12)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
