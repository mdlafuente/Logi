//
//  SoloView.swift
//  Logi
//
//  Created by Manuel on 11/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct CardView: View {
    @State var propiedad : Casa
    
    var body: some View {
        
        VStack {
            Image(propiedad.imagen)
                .resizable()
                .frame(width: 320, height: 200)
                .aspectRatio(contentMode: .fit)
            
            
            HStack {
                VStack(alignment: .leading){
                    Text(propiedad.ubicacion)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(propiedad.nombre)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(propiedad.capacidad)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                
                VStack {
                    Button(action: {
                        self.propiedad.isFav.toggle()
                    }) {
                        Image(systemName: propiedad.isFav ? "heart.fill" : "heart")
                            .foregroundColor(propiedad.isFav ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : .black )
                            .font(.title)
                    }
                }
                .padding()
                
                Spacer()
                    .frame(width: 0)
            }
            .padding()
        }
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .frame(width: 320)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                .modifier(ShadowModifier())
            
        )
            .padding([.top, .horizontal])
        
    }
}

