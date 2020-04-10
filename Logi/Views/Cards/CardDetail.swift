//
//  ContentView.swift
//  Logi
//
//  Created by Manuel on 25/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct CardDetail: View {
    @Binding var propiedad: Casa

    var body: some View {
        ScrollView{
            
            VStack{
                VStack{
                    HStack(alignment: .top){
                        
                        Spacer()
                        
                        ZStack{
                            Image(propiedad.imagen)
                                .frame(maxWidth: screen.width - 60, maxHeight: 280)
                            
                            VStack{
                                Image(systemName: "xmark")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.white)
                            }
                            .onTapGesture {
                                self.propiedad = Casa()
                            }
                            .frame(width: 36, height: 36)
                            .background(Color.black)
                            .clipShape(Circle())
                            .offset(x: 160, y: -80)
                        }
                    }
                    Spacer()
                }
                .padding(20)
                .padding(.top, 0)
                .frame(maxWidth: screen.width, maxHeight: 280)
                .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
                
                VStack(alignment: .leading, spacing: 30){
                    
                    Text(propiedad.nombre)
                        .font(.title).bold()
                        .padding(.top, 30)
                    
                    Text(propiedad.ubicacion)
                        .font(.headline)
                        .foregroundColor(.secondary)
                   
                    HStack {
                        Text("$\(propiedad.precio)")
                            .font(.subheadline).bold()
                            .frame(width: 100, height: 30, alignment: .leading)
                        
                        Text(propiedad.capacidad)
                            .font(.subheadline).bold()
                            .frame(width: 200, height: 30, alignment: .trailing)
                    }
                    
                    Text(propiedad.descripcion1)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)

                    Text(propiedad.descripcion2)
                        .multilineTextAlignment(.leading)
                      
                    
                    Text(propiedad.descripcion3)
                        .multilineTextAlignment(.leading)
                      
                    
                    Button(action: {}) {
                        Text("Reservar propiedad")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding([.leading, .trailing])
                            .frame(width: 300, height: 50)
                            .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .cornerRadius(15.0)
                            .modifier(ShadowModifier())
                    }
                    .padding(33)
                    
                    Spacer()
                }

                .padding(30)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(BlurView(style: .systemMaterial))
        .edgesIgnoringSafeArea(.bottom)
    }
}
