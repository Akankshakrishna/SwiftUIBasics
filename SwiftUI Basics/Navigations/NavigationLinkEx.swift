//
//  NavigationsExample.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct NavigationsExample: View {
    @State private var isShowingDetailView = false
    @State private var selection: String? = nil
    var body: some View {
        
        // Navigation Link through state variables
        NavigationView {
            VStack {
                NavigationLink("", destination: Text("Second View"), isActive: $isShowingDetailView)
                Button("Tap to show detail") {
                    self.isShowingDetailView = true
                }
            }
            .navigationTitle("Navigation")
        }
        
        // Navigations Link through tags
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink("", destination: Text("Second View"), tag: "Second", selection: $selection)
                NavigationLink("", destination: Text("Third View"), tag: "Third", selection: $selection)
                Button("Tap to show second") {
                    self.selection = "Second"
                }
                Button("Tap to show third") {
                    self.selection = "Third"
                }
            }
            .navigationTitle("Navigation")
        }
    }
}


struct NavigationsExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationsExample()
    }
}
