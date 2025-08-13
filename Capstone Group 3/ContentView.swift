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
            
            VStack(spacing: 10.0) {
                
                Text("VoluntR")
                    .font(.system(size: 80))
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.537, green: 0.251, blue: 0.351))
                    .multilineTextAlignment(.center)
                    
                    
                
                Image("vol")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.white)
                    .cornerRadius(3)
                    .padding()
                            .background(Rectangle()
                                .foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
                            .padding()
                
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
                    .tint(Color("voluntRBlack"))
                    Spacer()
                        .frame(width: 35.0)
                    Button("Organization"){
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("voluntRBlack"))
                }
            }
        }
        
        
       
    }
}

#Preview  {
    ContentView()
}
