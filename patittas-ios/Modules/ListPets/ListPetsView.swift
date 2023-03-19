//
//  ListPetsView.swift
//  patittas-ios
//
//  Created by Victor Castro on 18/03/23.
//

import SwiftUI

struct Pet {
    var id: Int
    var name: String
    var location: String
}

struct ListPetsView: View {
    
    let pets: [Pet] = [
        Pet(id: 1, name: "John", location: "Miraflores, Lima"),
        Pet(id: 2, name: "Alice", location: "Breña, Lima"),
        Pet(id: 3, name: "Bob", location: "Pueblo Libre, Lima"),
        Pet(id: 4, name: "Martinez", location: "San Isidro, Lima"),
        Pet(id: 5, name: "Bobby", location: "Miraflores, Lima"),
        Pet(id: 6, name: "Ruperta", location: "Magdalena, Lima"),
        Pet(id: 7, name: "Rodolfo", location: "Rimac, Lima"),
        Pet(id: 8, name: "Thor", location: "Puente piedra, Lima"),
        Pet(id: 9, name: "Fancy", location: "Miraflores, Arequipa"),
    ]
    
    var body: some View {
        NavigationStack {
            List(pets, id: \.id) { pet in
                NavigationLink {
                    PetView(pet: pet)
                } label: {
                    HStack {
                        Image("patitas-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 80)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text(pet.name).font(.headline)
                            Text(pet.location).font(.caption).foregroundColor(.gray)
                            Text("21/09/2020").font(.caption2).fontWeight(.bold).foregroundColor(.indigo)
                        }
                        Spacer()
                        Text("922094776").font(.footnote)
                    }
                }
                
            }
        }
    }
}

struct ListPetsView_Previews: PreviewProvider {
    static var previews: some View {
        ListPetsView()
    }
}
