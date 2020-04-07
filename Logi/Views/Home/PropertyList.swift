//
//  TopDestinations.swift
//  Logi
//
//  Created by Manuel on 21/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI
import Firebase


struct PropertyList: View {
    var propiedades: [Casa]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(propiedades) { propiedad in
                    CardView(image: propiedad.imagen, location: propiedad.ubicacion, name: propiedad.nombre, capacity: propiedad.capacidad)
                }
            }
            .frame(height: 350)
        }
    }
}

