//
//  PopoverView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 11/04/23.
//

import SwiftUI

struct PopoverView: View {
    @State private var showingPopover = false
    
    var body: some View {
        Button("Show Menu") {
            showingPopover = true
        }
        .popover(isPresented: $showingPopover) {
            Text("Your content here")
                .font(.headline)
                .padding()
                .foregroundColor(Color.green)
        }
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
