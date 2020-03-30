//
//  TopDestinations.swift
//  Logi
//
//  Created by Manuel on 21/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct TopDestinations: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                CardView(image: "casaSm1", location: "San Miguel de Allende, México.", name: "Casa Román", capacity: "8 - 10 personas")
                
                CardView(image: "casaPv1", location: "Puerto Vallarta, México.", name: "Casa Arenas", capacity: "10 - 12 personas")
                
                CardView(image: "casaCa1", location: "Onatrio, Canadá.", name: "Oak Trail Woods", capacity: "4 - 7 personas")
                
                CardView(image: "dptoSf1", location: "SunnyVale, CA.", name: "Kifer Rd.", capacity: "2 - 4 personas")
                
                CardView(image: "dptoSf1", location: "SunnyVale, CA.", name: "Kifer Rd.", capacity: "2 - 4 personas")
                
            }
            .frame(height: 350)
            
        }
    }
}
