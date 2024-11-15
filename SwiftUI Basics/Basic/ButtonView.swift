//
//  ButtonView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        
        // Type - 1
        Button("SUBMIT") {
            print("Submit button clicked")
        }.padding()
            .background(Color.yellow)
            .cornerRadius(10)
            .font(.custom("DMSans-Bold", size: 20))
            .foregroundColor(Color.white)
        
        // Type - 2
        Button(action: {
            print("Submit button clicked")
        }) {
            Text("Close")
                .font(.custom("DMSans-Bold", size: 20))
                .foregroundColor(Color.white)
            Image(systemName: "multiply")
            
        }.padding()
            .background(Color.yellow)
            .cornerRadius(10)
            .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
