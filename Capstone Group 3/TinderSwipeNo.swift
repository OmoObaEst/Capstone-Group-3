//
//  ContentView.swift
//  STEMstars
//
//  Created by Scholar on 8/5/25.
//

import SwiftUI

struct TinderSwipeNo: View {
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
                    Image("billion")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
    // Text for TinderSwipeNo
                    HStack(spacing:20) {
                        Text("Billion Oyster Project")
                            .font(.title)
                            .fontWeight(.bold)

                        Spacer()

                        Text("Marine Life Restoration")

                    } // end of HStack

                    
                    Text("Billion Oyster Project is restoring oyster reefs to New York Harbor in collaboration with New York City communities.")
                    
                    Text("Location: Brooklyn, NY")
                    Text("Times: 7AM - 3PM")
                    Text("Ages: 16+")
                    Text("Skills Needed: DMing for more info")
                    
                    Text("Would you be interested in joining the Billion Oyster Project?")
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
