//
//  MenuView.swift
//  patittas-ios
//
//  Created by Victor Castro on 18/03/23.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .padding(12)
                    .background(Color(.systemGray3))
                    .clipShape(Circle())
                
                VStack {
                    Text("Victor Castro Contreras")
                    Text("victor@gmail.com")
                }.padding(.top, 10)
                
                
                List {
                    Section(header: Text("Menu")) {
                        NavigationLink {
                            VoluntaryView()
                        } label: {
                            HStack {
                                Image(systemName: "figure.wave")
                                Text("Sé un Voluntario")
                            }
                        }
                        
                        NavigationLink {
                            FindUsView()
                        } label: {
                            HStack {
                                Image(systemName: "map")
                                Text("Ubícanos")
                            }
                        }
                    }
                    
                    Section {
                        Button {
                            logoutService()
                        } label: {
                            Text("Cerrar sesión")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundColor(.red)
                        }
                    }
                    
                }
            }.background(Color(.systemGray6))
        }
        
    }
    
    func logoutService() {
        session.logOutSession()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
