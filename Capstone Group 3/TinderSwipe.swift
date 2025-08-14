//
//  ContentView.swift
//  STEMstars
//
//  Created by Scholar on 8/5/25.
//

import SwiftUI

struct TinderSwipe: View {
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
                    Image("salvationarmy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                        .cornerRadius(15)
    // Text for TinderSwipe
                    HStack(spacing:20) {
                        Text("Salvation Army")
                            .font(.title)
                            .fontWeight(.bold)

                        Spacer()

                        Text("Thrift Store & Faith Organization")

                    } // end of HStack

                    
                    Text("The Salvation Army is an international Christian charitable organization with a mission to preach the gospel of Jesus Christ and meet human needs in His name without discrimination.")
                    
                    Text("Location: Varies")
                    Text("Times: 9AM - 5PM")
                    Text("Ages: 18+")
                    Text("Skills Needed: ")
                    
                    Text("Would you be interested in joining Salvation Army?")
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
                        NavigationLink(destination: TinderSwipeNo()) {
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
