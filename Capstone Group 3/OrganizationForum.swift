//
//  OrganizationForum.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct OrganizationForum: View {
    var body: some View {
        VStack{
            Text("Salvation Army")
            Link("Website", destination: URL(string: "http://www.salvationarmyusa.org/")!)
            Text("Locations")
            Image("salvationarmymap")
                .resizable(resizingMode: .stretch)
                .frame(width: 300.0, height: 250.0)
            Text("Calender")
            Image("calender")
                .resizable(resizingMode: .stretch)
                .frame(width: 300.0, height: 250.0)
            
            Text("PSA")
        }
    }
}

#Preview {
    OrganizationForum()
}
