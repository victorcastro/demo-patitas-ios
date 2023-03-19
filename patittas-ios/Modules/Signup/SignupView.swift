//
//  RegisterView.swift
//  patittas-ios
//
//  Created by Victor Castro on 17/03/23.
//

import SwiftUI

struct SignupView: View {
    
    @State var name = ""
    @State var lastname = ""
    @State var email = ""
    @State var mobile = ""
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Datos personales")) {
                    TextField("Nombre", text: $name)
                    
                    TextField("Apellidos", text: $lastname)
                    
                    TextField("Correo", text: $email).keyboardType(.emailAddress)
                    
                    TextField("Celular", text: $mobile).keyboardType(.phonePad)
                }
                
                Section(header: Text("Datos de acceso")) {
                    TextField("Usuario", text: $username)
                    SecureField("Ingrese su contraseña", text: $password)
                }
                
            }.formStyle(.grouped)
                .navigationTitle("Nuevo registro")
                
        }.toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Guardar") {
                    print("Guardando datos...")
                }
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
