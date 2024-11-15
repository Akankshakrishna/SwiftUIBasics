//
//  NavigationExample.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 12/04/23.
//

import SwiftUI

struct NavigationExample: View {
    @State var enteredDetails: String = ""
    @State var isShowingDetailView: Bool = false
    @State var name: String = ""
    var body: some View {
        // Passing data to destination view
        NavigationView {
            VStack(spacing: 15) {
                TextField("Enter your name", text: self.$name)
                    .font(.custom("DMSans-Bold", size: 20))
                    .padding()
                    .border(Color(UIColor.separator))
                    .padding()
                Button("Tap to show detail") {
                    self.isShowingDetailView = true
                }
                
                if enteredDetails != "" {
                    Text("Entered Mobile Number: \(enteredDetails)")
                }
                
                NavigationLink("", destination:ResultView(name: name, mobile: $enteredDetails), isActive: $isShowingDetailView)
            }
            .navigationTitle("Navigation")
        }
    }
}

struct ResultView: View {
    var name: String
    @Binding var mobile: String
    var body: some View {
        VStack {
            Text("Hi \(name)")
            TextField("Enter your mobile number", text: self.$mobile)
                .font(.custom("DMSans-Bold", size: 20))
                .padding()
                .keyboardType(.numberPad)
                .border(Color(UIColor.separator))
                .padding()
        }
    }
}

struct NavigationExample_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}



struct FirstView: View {
    @State var name: String = ""
    @State var isShow: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your name", text: self.$name)
                    .font(.custom("DMSans-Bold", size: 20))
                    .padding()
                    .border(Color(UIColor.separator))
                    .padding()
                Button("Next") {
                    self.isShow = true
                }
                NavigationLink("", destination: SecondView(name: name), isActive: $isShow)
            }
        }
    }
}


struct SecondView: View {
    var name: String
    var body: some View {
        VStack {
            Text("Hi \(name)")
                .font(.custom("DMSans-Bold", size: 20))
                .padding()
                .keyboardType(.numberPad)
                .background(.yellow)
        }
    }
}
