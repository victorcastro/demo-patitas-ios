//
//  patittas_iosApp.swift
//  patittas-ios
//
//  Created by Victor Castro on 16/03/23.
//

import SwiftUI

@main
struct patittas_iosApp: App {
        
    var body: some Scene {
        WindowGroup {
            RootViewApp().environmentObject(SessionManager.shared)
            
        }
    }
}


struct RootViewApp: View {
    
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        Group {
            if session.userLogged != nil {
                HomeView()
            } else {
                LoginView()
            }
        }
    }
}
