//
//  UserProfile.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        VStack (spacing: 25){
            Text("@Username")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text ("#Skills")
                .font(.headline)
        }//end of Vstack
                
        VStack (spacing: 60){
                Text("Hours")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Organizations")
                    .font(.title)
                    .fontWeight(.semibold)

            }//end of HStack
    }//end of some View
}//end of UserProfile: View

#Preview {
    UserProfile()
}
