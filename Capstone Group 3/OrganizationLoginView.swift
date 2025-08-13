import SwiftUI

struct OrganizationLoginView: View {
    @State private var organizationName: String = ""
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            Color(.voluntRBeige)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Organization Login")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("voluntRDarkBlue"))
                    .multilineTextAlignment(.center)
                    .padding(.top)

                Group {
                    TextField("Organization Name", text: $organizationName)
                    TextField("Username", text: $username)
                    SecureField("Password", text: $password)
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

                Button(action: {
                    // Handle login logic here
                    print("Org: \(organizationName), Username: \(username), Password: \(password)")
                }) {
                    Text("Log In")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("voluntRLightBurgundy"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    OrganizationLoginView()
}
