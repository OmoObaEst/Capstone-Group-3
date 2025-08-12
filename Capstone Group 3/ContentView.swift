//
//  ContentView.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.voluntRBeige)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                
                Text("VoluntR")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.538, green: 0.251, blue: 0.351))
                    .multilineTextAlignment(.trailing)
                    .lineLimit(5)
                    .padding(100.0)
                
                Image("vol")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .cornerRadius(15)
                
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
            }
        }
        
        
       
    }
}

#Preview  {
    ContentView()
}
