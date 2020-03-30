//
//  Adventures.swift
//  Logi
//
//  Created by Manuel on 21/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct Adventures: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                CardView(image: "adAl1", location: "Fairbanks, Alaska.", name: "Alaskan Wild", capacity: "2 weeks")
                
                CardView(image: "adRc1", location: "Zacatecas, México.", name: "Real de 14", capacity: "1 weekend")
                
                CardView(image: "adTf1", location: "Tierra de Fuego, Chile", name: "Tip of the world", capacity: "1 - 2 weeks")
                
                CardView(image: "adKill1", location: "Kilimanjaro, Tanzania.", name: "Kilimanjaro Safari", capacity: "2 - 3 weeks.")
                
                CardView(image: "adKill1", location: "Kilimanjaro, Tanzania.", name: "Kilimanjaro Safari", capacity: "2 - 3 weeks.")
            }
            .frame(height: 350)
        }
    }
}
