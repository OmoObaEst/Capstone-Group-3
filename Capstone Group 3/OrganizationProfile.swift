//
//  OrganizationProfile.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct OrganizationProfile: View {
    var body: some View {
            ZStack{
                Color.voluntRBeige
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("VoluntR")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundStyle(Color(.voluntRDarkBlue))
                    
                    //---------------------------------------//
                    
                    HStack (alignment: .center, spacing: 15.0) {
                        VStack (alignment: .leading) {
                            Text("Salvation Army")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(Color(.white))
                            
                            
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
                    
                    Text("The Salvation Army is an international Christian charitable organization with a mission to preach the gospel of Jesus Christ and meet human needs in His name without discrimination.")
                        .fontWeight(.semibold)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .foregroundStyle(Color(.voluntRDarkBurgundy))
                    
                    Image("salvationarmy")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 360.0, height: 215.0)
                        .border(Color.voluntRDarkBlue, width: 5)
                        .cornerRadius(15)
                        .padding()
                    
                    Spacer()
                }
            }
        }
    }

#Preview {
    OrganizationProfile()
}
