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
            
            
    
            ScrollView{
                ZStack{
                    Color(.voluntRBeige)
                        .ignoresSafeArea()
                    VStack {
                        HStack (spacing: 25) {
                            Text("Username")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color(.white))

                            
                            Button {
                                //show the image picker
                                isPickerShowing = true
                                
                            } label: {
                                Text("Change Photo")
                            }//end of button
                            .font(.headline)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(.voluntRDarkBlue))
                        }//end of Hstack
                        .padding(20)
                        .background(Rectangle() .foregroundColor(.voluntRLightBlue))
                        .cornerRadius(10)
                        .shadow(radius: 5)
  
                        
                        HStack {
                            VStack {
                                Text("Organizations")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.537, green: 0.251, blue: 0.351))
                                
                                Text("Salvation Army ")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red: 0.537, green: 0.251, blue: 0.351))
                       
                                    Image("vol")
                                        .resizable(resizingMode: .stretch)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(3)
                                        .padding()
                                        .background(Rectangle()
                                            .foregroundColor(.white))
                                        .cornerRadius(15)
                                        .frame(width: 200.0, height: 125.0)
                                        .shadow(radius: 15)
                            }.offset(x:-30, y:0)

                            VStack {
                                Text("Hours")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.537, green: 0.251, blue: 0.351))
                               
 
                                Text("5 Hours")
                                    .foregroundColor(Color(red: 0.537, green: 0.251, blue: 0.351))
                
                            }.offset(x:0, y:-70)
                        }
                        .offset(x:0, y:30)
                        .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
                         //image picker)
                         ImagePicker ()
                         } 
                        
                    }.offset(x:0, y:30)
                }//end of ZStack
            }.background(Color.voluntRBeige)//end of scroll view
        }//end of nav stack
        }//end of some View
    }//end of UserProfile: View
#Preview {
    UserProfile()
}


