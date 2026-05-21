//
//  LoginView.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 20/05/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                
                Image("threadslike-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                VStack{
                    TextField("Enter Your e-mail", text: $email)
                        .autocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Enter Your Password", text:  $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                NavigationLink {
                    Text("Forgot Password")
                } label: { Text("Forgot Password?")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .padding(.vertical)
                                .padding(.trailing, 28)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                Button{
                    
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                        
                }
                Spacer()
                
                Divider()
                
                NavigationLink{
                    Text("Registration View")
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                    
                }
                .padding(.vertical, 16)
                
            }
                    
                }
            }
        }

#Preview {
    LoginView()
}
