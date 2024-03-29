import SwiftUI
import Firebase

struct LoginView: View {
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    @State var userIsLoggedIn = false
    @State var loginStatusMessage = ""
    
    var body: some View {
        if userIsLoggedIn == true { ContentView()
        } else {
            content
        }
    }
    var content: some View {
       //NavigationView {
            ScrollView {
                
                VStack(spacing: 16) {
                   
                    if !isLoginMode {
                        Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                    }
                    
                    Group {
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)
                    }
                    .padding(12)
                    .background(Color.white)
                    .cornerRadius(10)
                    VStack{
                        Button {
                            handleAction()
                        } label: {
                            HStack {
                                Spacer()
                                Text(isLoginMode ? "Log In" : "Create Account")
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                    .font(.system(size: 14, weight: .semibold))
                                Spacer()
                            }.background(Color.blue)
                            
                        }.cornerRadius(10)
                        
                        if isLoginMode == false {
                            Text("Already have an account? Login ")
                                .frame(width: 300)
                                .onTapGesture {
                                    isLoginMode.toggle()
                                }
                        }
                        if isLoginMode == true {
                            Text("Don't have an account? Create Account")
                                .frame(width: 300)
                                .onTapGesture{
                                    isLoginMode = false
                                }
                        }
                    }
                    Text(self.loginStatusMessage)
                    
                }
                .padding()
                
            }
            .navigationTitle(isLoginMode ? "Log In" : "Create Account")
            .background(
                LinearGradient(gradient: Gradient(colors: [.yellow, .green]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
        //}
    }
    private func handleAction() {
        if isLoginMode {
            loginUser()
        } else {
            createNewAccount()
        }
    }
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: email, password: password) { result, err in
            if let err = err
            {
                print("Failed to login user:", err)
                self.loginStatusMessage = "Failed to login user: \(err)"
                return
                
            }
            print("Successfully logged in as user: \(result?.user.uid ?? "")")
            
            self.loginStatusMessage = "Successfully logged in as user: \(result? .user.uid ?? "")"
            
            self.userIsLoggedIn = true
            
        }
    }
    
    private func createNewAccount() {
        Auth.auth().createUser(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed to create user:", err)
                self.loginStatusMessage = "Failed to create user: \(err)"
                return
            }
            
            print("Successfully created user: \(result?.user.uid ?? "")")
            
            self.loginStatusMessage = "Successfully created user: \(result?.user.uid ?? "")"
            
           }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
