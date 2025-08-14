//
//  ContentView.swift
//  STEMstars
//
//  Created by Scholar on 8/5/25.
//

import SwiftUI

struct TinderSwipeYes: View {
    var body: some View {
        // Nav Bar
        NavigationStack {
            VStack {} // end of VStack
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: OrganizationProfile()) {
                            Text("Organization Profile")
                        }
                }
            }
            ZStack {
                Color(.voluntRBeige)
                    .ignoresSafeArea() // color of the background
                
                VStack(alignment: .leading, spacing:20) {
                    Image("idealist")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
    // Text for TinderSwipeNo
                    HStack(spacing:20) {
                        Text("Idealist")
                            .font(.title)
                            .fontWeight(.bold)

                        Spacer()

                        Text("Opportunity Connector")

                    } // end of HStack

                    
                    Text("Idealist is an interactive site where people and organizations can exchange resources and ideas, locate opportunities and supporters, and take steps toward building a world where all people can lead free and dignified lives.")
                    
                    Text("Location: Varies")
                    Text("Times: Varies")
                    Text("Ages: 16+")
                    Text("Skills Needed: DMing for more info")
                    
                    Text("Would you be interested in joining Idealist?")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    HStack {
                        NavigationLink(destination: TinderSwipeYes()) {
                                    Text("Yes")
                                    .padding()
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                }
                        NavigationLink(destination: TinderSwipe())  { // this page redirecting will change perhaps
                                    Text("No")
                                    .padding()
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                }
                        
                    }
                } // end of VStack
                
                .padding()
                .background(Rectangle().foregroundColor(.white))
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding()
               
            } // end of ZStack
        } // end of NavStack

    }
    
}

#Preview {
    TinderSwipe()
}
