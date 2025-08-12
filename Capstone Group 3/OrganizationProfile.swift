//
//  OrganizationProfile.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct OrganizationProfile: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Text("Salvation Army")
                        .font(.title)
                        .fontWeight(.bold)
                    Image("salvationarmylogo")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 80.0, height: 100.0)
                        .padding()
                }
                Text("The Salvation Army is an international Christian charitable organization with a mission to preach the gospel of Jesus Christ and meet human needs in His name without discrimination.")
                    .padding()
            }
        }
       
    }
}

#Preview {
    OrganizationProfile()
}
