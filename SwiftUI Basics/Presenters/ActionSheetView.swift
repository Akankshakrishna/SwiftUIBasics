//
//  ActionSheetView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 11/04/23.
//

import SwiftUI

struct ActionSheetView: View {
    @State var showActionSheet = false
    @State var coffeeConsumptionTime = ""
    var body: some View {
        Button {
            self.showActionSheet = true
        } label: {
            Text("Show action sheet")
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("When do you usually consume your coffee?"), message: nil, buttons: [
                .default(Text("Morning"), action: {
                    self.coffeeConsumptionTime = "Morning"
                }),
                .default(Text("Afternoon"), action: {
                    self.coffeeConsumptionTime = "Afternoon"
                }),
                .default(Text("I dont lol"), action: {
                    self.coffeeConsumptionTime = ""
                }),
                .cancel()
            ]
            )
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
