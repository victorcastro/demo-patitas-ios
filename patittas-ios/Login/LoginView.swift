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
    
    var body: some View {
        NavigationView {
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
                        NavigationLink(destination: HomeView()) {
                            Text("INICIAR SESIÓN")
                                .padding(15)
                                .frame(maxWidth: .infinity)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: SignupView()) {
                            Text("Quiero registrarme").font(.subheadline).foregroundColor(.blue)
                        }
                        
                    }
                }
            }.padding()
                .background(Color(hex: 0xf7f7f7))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
