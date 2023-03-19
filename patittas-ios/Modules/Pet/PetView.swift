//
//  PetView.swift
//  patittas-ios
//
//  Created by Victor Castro on 18/03/23.
//

import SwiftUI

struct PetView: View {
    
    let pet: Pet
    
    var body: some View {
        Text(pet.name).font(.title)
        Text("Perdido en \(pet.location)").font(.caption)
    }
}

struct PetView_Previews: PreviewProvider {
    static var previews: some View {
        PetView(pet: Pet(id: 1, name: "Bobby", location: "Barranco, Lima"))
    }
}
