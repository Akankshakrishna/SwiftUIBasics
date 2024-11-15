//
//  AlertView.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 11/04/23.
//

import SwiftUI

struct AlertView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
