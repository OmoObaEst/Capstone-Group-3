//
//  UserProfile.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
        
        @State var isPickerShowing = false
        
        VStack (spacing: 25){
            Button {
                //show the image pciker
                isPickerShowing = true
                
            } label: {
                Text("Change Photo")
            }//end of button
            
            
            
            
            
            
            
            
            Text("Username")
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                Text ("#Skills")
                    .font(.headline)
            }//end of HStack
        }//end of Vstack
        // the top of the screen with the username and skills
        Spacer().frame(height: 175)
    
        VStack (spacing: 100){
            Text("Hours")
                .font(.title)
                .fontWeight(.semibold)
            Text("Organizations")
                .font(.title)
                .fontWeight(.semibold)

            }//end of VStack
        //the bottom of the screen with the hours and the organizations
        .frame(maxWidth: .infinity, alignment: .leading) // pushes the text "hours" and "orgs" to the side
        .padding () //makes it look less akward on the sides
        .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
            //image picker)
            
        } //end of image picker)
    }//end of some View
}//end of UserProfile: View

#Preview {
    UserProfile()
}

