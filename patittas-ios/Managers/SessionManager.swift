//
//  SessionManager.swift
//  patittas-ios
//
//  Created by Victor Castro on 18/03/23.
//

import Foundation

struct User: Identifiable {
    var id: Int
    var firstname: String
    var lastname: String
}

struct UserLogin {
    var username: String
    var password: String
}


class SessionManager: ObservableObject {
    
    @Published var userLogged: User?
    
    static let shared = SessionManager()
    
    func signInSession(_ userLogin: UserLogin) -> User? {
        
        // CALL SERVICE TO LOGIN
        if true {
            userLogged = User(id: 1, firstname: "Victor", lastname: "Castro")
        } else {
            userLogged = nil
        }
        
        return userLogged
    }
    
    func logOutSession() {
        print("logOutSession")
        self.userLogged = nil
    }
}
