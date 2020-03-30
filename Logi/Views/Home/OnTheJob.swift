//
//  OnTheJob.swift
//  Logi
//
//  Created by Manuel on 21/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct OnTheJob: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                CardView(image: "dptoCdmx1", location: "Colonia Roma, CDMX.", name: "Torre Aura", capacity: "1 - 3")
                
                CardView(image: "dptoNy1", location: "East Village, NY.", name: "E 8th Street", capacity: "1 - 2")
                
                CardView(image: "dptoLo1", location: "Gosfield St. LND.", name: "Financial district", capacity: "1 - 4")
                
                CardView(image: "dptoSf1-1", location: "Mission District, SF.", name: "Folsom St.", capacity: "2 - 3.")
                
                CardView(image: "dptoSf1-1", location: "Mission District, SF.", name: "Folsom St.", capacity: "2 - 3.")
            }
            .frame(height: 350)
        }
    }
}
  
