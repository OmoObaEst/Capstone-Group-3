import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.voluntRBeige)
                    .ignoresSafeArea()
                
                VStack(spacing: 10.0) {
                    
                   
                    
                    Image("voluntrlogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle()) // makes it circular
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 4) // optional border
                        )
                        .shadow(radius: 15)
                        .padding()
                    
                    Text("what is your role?")
                        .font(.system(size:20))
                        .fontWeight(.black)
                        .foregroundColor(Color("voluntRDarkBlue"))
                        .multilineTextAlignment(.center)
                        .lineLimit(0)
                    
                    HStack {
                        // Volunteer Button
                        Spacer().frame(width: 10.0)
                        NavigationLink(destination: VolunteerLoginView()) {
                            Text("Volunteer")
                                .font(.title2)
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color("voluntRBlack"))
                        
                        Spacer().frame(width: 10.0)
                        
                        // Organization Button
                        NavigationLink(destination: OrganizationLoginView()) {
                            Text("Organization")
                                .font(.title2)
                                .frame(minWidth: 0, maxWidth: .infinity)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color("voluntRBlack"))
                        
                        
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}
    
    #Preview {
        ContentView()
    }

