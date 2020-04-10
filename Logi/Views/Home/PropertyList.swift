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
    @Binding var selectedProperty: Casa
    
    var propiedades: [Casa]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(propiedades) { propiedad in
                    CardView(propiedad: propiedad)
                        .onTapGesture {
                            self.selectedProperty = propiedad
                    }
                }
            }
            .frame(height: 350)
        }
    }
}

