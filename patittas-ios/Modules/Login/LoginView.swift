//
//  HomeView.swift
//  patittas-ios
//
//  Created by Victor Castro on 16/03/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var text: String = ""
    @State private var isSecured: Bool = true
    @State var username: String = ""
    @State var isOn = false
    @State var loginSuccess = false
    
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("patitas-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                Spacer()
                VStack(alignment: .leading, spacing: 30) {
                    VStack(alignment: .leading) {
                        Text("Usuario").font(.headline)
                        TextField("Ingrese su usuario", text: $username)
                            .padding()
                            .border(Color(.systemGray5))
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Contraseña").font(.headline)
                            .padding(0)
                        ZStack(alignment: .trailing) {
                            Group {
                                if isSecured {
                                    SecureField("Ingrese su contraseña", text: $text)
                                } else {
                                    TextField("Ingrese su contraseña", text: $text)
                                }
                            }.padding(.trailing, 32)
                            
                            Button(action: {
                                isSecured.toggle()
                            }) {
                                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                    .accentColor(.gray)
                            }
                        }
                        .padding()
                        .border(Color(.systemGray5))
                    }
                    
                    Toggle("Recordar accesos", isOn: $isOn)
                    
                    VStack(spacing: 20) {
                        Button {
                            loginService()
                        } label: {
                            Text("INICIAR SESIÓN")
                                .padding(10)
                                .frame(maxWidth: .infinity)
                        }.buttonStyle(.borderedProminent)
                        
                        
                        NavigationLink(destination: SignupView()) {
                            Text("Quiero registrarme").font(.subheadline).foregroundColor(.blue)
                        }
                        
                    }
                }
            }.padding(30)
                .background(Color(hex: 0xf7f7f7))
                .navigationDestination(isPresented: $loginSuccess) {
                    HomeView()
                }
        }
        
    }
    
    func loginService() {
        print("loginService")
        var userLogin = UserLogin(username: "abc", password: "123")
        if session.signInSession(userLogin) != nil {
            self.loginSuccess = true
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
