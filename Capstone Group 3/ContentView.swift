//
//  ContentView.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//<<<<<<< HEAD
            Text("what is your role?")
                .font(.system(size:20))
                .fontWeight(.black)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
                .lineLimit(0)
            HStack {
            Button("Volunteer"){
               
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
                Button("Organization"){
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            }
//=======
           
//>>>>>>> main
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
