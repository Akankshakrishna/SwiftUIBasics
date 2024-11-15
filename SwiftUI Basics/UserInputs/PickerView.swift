//
//  PickerView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct PickerView: View {
    var fruits = ["Apple","Banana", "Pear"]
    @State var selectedFruit = 0
      
    var body: some View {
        HStack {
            Text("Selct the Fav Fruit")
            Spacer()
            Picker(selection: $selectedFruit, label: Text("Fruit")) {
               ForEach(0..<fruits.count) {
                Text(self.fruits[$0]).tag($0)
              }
            }
  //          .pickerStyle(.segmented)
            .pickerStyle(.wheel)
        }.padding(.horizontal, 20)
            .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray)
        )
        .padding()
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
