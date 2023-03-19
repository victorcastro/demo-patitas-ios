//
//  HomeView.swift
//  patittas-ios
//
//  Created by Victor Castro on 17/03/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab = "Mascotas"
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                ListPetsView()
                    .tabItem { Label("Mascotas", systemImage: "pawprint") }
                    .tag("Mascotas")
                MenuView()
                    .tabItem { Label("Menu", systemImage: "line.3.horizontal") }
                    .tag("")
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
