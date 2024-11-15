//
//  ToggleView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct ToggleView: View {
    @State private var isPushEnable = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isPushEnable) {
                Text("Push Notification")
            }.padding()
                .border(Color(UIColor.separator))
                .padding()
                
            Text(isPushEnable ? "Schedule Notification" : " ")
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
