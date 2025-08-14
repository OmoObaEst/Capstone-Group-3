//
//  OrganizationProfile.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct OrganizationProfile: View {
    var body: some View {
        NavigationStack {
            VStack {} // end of vstack
                .toolbar {
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: TinderSwipe()) {
                            Text("V")
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.white)
                                .padding(20.0)
                                .background(Circle() .foregroundColor(.voluntRDarkBurgundy))
                                .padding(.top, 30)
                                
                        }
                        NavigationLink(destination: UserProfile()) {
                            Image("profileicon")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 55.0, height: 55.0)
                                .padding(.top, 30)
                        }
                    }
                }
            ScrollView {
                ZStack{
                    Color.voluntRBeige
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Text("VoluntR")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundStyle(Color(.voluntRDarkBurgundy))
                        
                        //---------------------------------------//
                        
                        HStack (alignment: .center, spacing: 15.0) {
                            VStack (alignment: .leading) {
                                Text("Salvation Army")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color(.white))
                                
                                Link("salvationarmyusa.org", destination: URL(string: "http://www.salvationarmyusa.org/")!)
                                    .foregroundStyle(Color(.blue))
                                    .underline()
                                
                                Button("Forum") {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                }
                                .font(.headline)
                                .buttonStyle(.borderedProminent)
                                .tint(Color(.voluntRDarkGreen))
                                
                            }
                            Image("salvationarmylogo")
                                .resizable(resizingMode: .stretch)
                                .frame(width: 90.0, height: 90.0)
                                .border(Color.voluntRDarkGreen)
                                .padding()
                        }
                        .padding(.horizontal, 15.0)
                        .background(Rectangle() .foregroundColor(.voluntRLightGreen))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        
                        //----------------------------------------///
                        
                        Image("salvationarmy")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 360.0, height: 215.0)
                            .border(Color.voluntRDarkBlue, width: 5)
                            .cornerRadius(15)
                            .padding()
                        
                        Text("The Salvation Army is an international Christian charitable organization with a mission to preach the gospel of Jesus Christ and meet human needs in His name without discrimination.")
                            .fontWeight(.semibold)
                            .padding(.horizontal, 30)
                            .foregroundStyle(Color(.voluntRDarkBurgundy))
                        
                        Text("Locations")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.voluntRDarkBurgundy))
                            .padding()
                        
                        Image("salvationarmymap")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 350.0, height: 300.0)
                            .border(Color.voluntRDarkBlue, width: 5)
                            .cornerRadius(15)
                        
                        //--------------------------------------//
                        
                        Text("Calender")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.voluntRDarkBurgundy))
                            .padding()
                        Image("calender")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 350.0, height: 300.0)
                            .border(Color.voluntRDarkBlue, width: 5)
                            .cornerRadius(15)
                        
                        
                        Text("PSA")
                        
                    }//end of v stack
                }//end of z stack
            } .background(Color.voluntRBeige) //end of scrollview
        }//end of nav stack
    }
}

#Preview {
    OrganizationProfile()
}
