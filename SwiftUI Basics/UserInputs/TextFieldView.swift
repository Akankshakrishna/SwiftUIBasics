//
//  TextFieldView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct TextFieldView: View {
    @State private var username: String = ""
    var body: some View {
        TextField("Enter your mobile number", text: self.$username)
            .font(.custom("DMSans-Bold", size: 20))
            .padding()
            .keyboardType(.numberPad)
            .border(Color(UIColor.separator))
            .padding()
            .onChange(of: username, perform: { eneterdText in
                actionOnChnage()
            })
    }
    
    func actionOnChnage() {
        if username.count > 10 {
            let limitedText = username.dropLast()
            username = String(limitedText)
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
