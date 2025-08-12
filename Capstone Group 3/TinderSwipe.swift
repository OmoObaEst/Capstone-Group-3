//
//  ContentView.swift
//  STEMstars
//
//  Created by Scholar on 8/5/25.
//

import SwiftUI

struct TinderSwipe: View {
    var body: some View {
        ZStack {
            Color(.systemPurple)
                .ignoresSafeArea() // color of the background
            
            VStack(alignment: .leading, spacing:20) {
                Image("Joy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                    .cornerRadius(15)
// Text for TinderSwipe
                HStack(spacing:20) {
                    Text("Joy Buolamwini")
                        .font(.title)
                        .fontWeight(.bold)

                    Spacer()

                    Text("Poet of Code")

                } // end of HStack

                
                Text("Founder of the Algorithmic Justice League. Uses art and research to illuminate social implications of AI and to promote equitable and accountable technology.")
                
                Text("Location: ")
                Text("Times: ")
                Text("Ages: ")
                Text("Skills Needed: ")

            } // end of VStack
            
            .padding()
            .background(Rectangle().foregroundColor(.white))
            .cornerRadius(20)
            .shadow(radius: 20)
            .padding()
           
        } // end of ZStack
        
    }
}

#Preview {
    TinderSwipe()
}
