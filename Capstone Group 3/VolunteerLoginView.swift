import SwiftUI

struct VolunteerLoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack { // make sure we have navigation
            ZStack {
                Color(.voluntRBeige)
                    .ignoresSafeArea()
                VStack {
                    Text("Log in to your account")
                        .font(.largeTitle)
                        .bold()
                        .frame(width: 350.0, height: 9.0)
                    Spacer()
                        .frame(height: 31.0)
                    
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    // Replace your Button here with NavigationLink
                    NavigationLink(destination: UserProfile()) {
                        Text("Log In")
                            .padding()
                            .background(Color("voluntRLightBurgundy"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    VolunteerLoginView()
}
