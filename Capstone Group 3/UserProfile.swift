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
        //when the user makes their account they will put the username they want. This will then pop up on this view
        /*var userName: String = "Username"
                var hours: Int = 0
                var skills: String = "Skills"
        */
        ScrollView{
            ZStack{
                Color(.black)
                    .ignoresSafeArea()
                VStack {
                    HStack (spacing: 25){
                        
                        Text("Username")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        Button {
                            //show the image picker
                            isPickerShowing = true
                            
                        } label: {
                            Text("Change Photo")
                        }//end of button
                        
                        .padding ()
                    }//end of Hstack
                    
                    // the top of the screen with the username and skills
                    
                    //.offset(y: -200)
                    
                    HStack {
                        Text("Organizations")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Spacer ()
                        Text("Hours")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }//end of the HStack
                    HStack {
                        
                            Text("Salvation Army ")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Image("vol")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color.white)
                                .cornerRadius(3)
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(.white))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .padding()
                            
                        Text("5 Hours")
                            .foregroundColor(Color.white)
                    }//end of HStack
                    
                    
                    //the bottom of the screen with the hours and the organizations
                    
                    
                    /*.sheet(isPresented: $isPickerShowing, onDismiss: nil) {
                     //image picker)
                     ImagePicker ()
                     } //end of image picker)*/
                    
                }//end of vstack
            }//end of ZStack
        }.background(Color.black)//end of scroll view
    }//end of some View
}//end of UserProfile: View

#Preview {
    UserProfile()
}


