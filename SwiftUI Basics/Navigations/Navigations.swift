//
//  Navigations.swift
//  SwiftUI Basics
//
//  Created by Akanksha.A on 10/04/23.
//

import SwiftUI

struct Navigations: View {
    @State private var score = 0
    var body: some View {
        
        // Declaring Navigation View
        NavigationView {
            Text("Hello, World!")
                .navigationTitle("Navigation")
                .navigationBarTitleDisplayMode(.inline)
        }
        
        // NavigationLink through Text
        NavigationView {
            NavigationLink(destination: Text("Second View")) {
                Text("Hello, World!")
            }
            .navigationTitle("Navigation")
        }
        
        // NavigationLink through Image
        NavigationView {
            NavigationLink(destination: Text("Second View")) {
                Image("shinchan")
                    .resizable()
                    .frame(width: 80, height: 80)
            }
            .navigationTitle("Navigation")
        }

        // Adding Navigation bar items
        NavigationView {
            Text("Score: \(score)")
                .navigationTitle("Navigation")
                .navigationBarItems(
                    leading:
                        Button("Subtract 1") {
                            self.score -= 1
                        },
                    trailing:
                        Button("Add 1") {
                            self.score += 1
                        }
                )
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
