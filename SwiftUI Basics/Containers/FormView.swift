//
//  FormView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct FormView: View {
    var colors = ["Red", "Green", "Blue"]
    var colorsOriginal: [Color] = [.red, .green, .blue]
    @State var enableNotifications = false
    @State var username: String = ""
    @State var selectedColor = 0
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
            }
            Section {
                Toggle(isOn: $enableNotifications) {
                    Text("Enable Notifications")
                }
                if enableNotifications {
                    Text("Notification 1")
                }
            }
            Section {
                Picker(selection: $selectedColor, label: Text("Colors")) {
                    ForEach(0..<colors.count) {
                        Text(self.colors[$0]).tag($0)
                    }
                }.pickerStyle(.segmented)
                Rectangle()
                    .frame(height: 150)
                    .foregroundColor(self.colorsOriginal[selectedColor])
            }
            Section {
                Button(action: {}) {
                    Text("Save")
                }
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
