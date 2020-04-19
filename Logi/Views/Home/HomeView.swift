//
//  CardView.swift
//  Logi
//
//  Created by Manuel on 10/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI
import Firebase

func fetchAll(settings: UserSettings) {
    let db = Firestore.firestore()
    
    settings.apartments = [Casa]()
    settings.propiedades = [Casa]()
    settings.adventures = [Casa]()
    
    db.collection("propiedades").getDocuments() { (querySnapshot, err) in
        if let err = err {
            print("Error getting documents: \(err)")
        } else {
            for document in querySnapshot!.documents {
                var casa = Casa(dictionary: document.data())
                if settings.favs.contains(where: { (c) -> Bool in
                    return c.nombre == casa.nombre
                }){
                    casa.isFav = true
                    addCasaToCorrespondingArray(settings: settings, casa: casa)
                } else {
                    addCasaToCorrespondingArray(settings: settings, casa: casa)
                }
            }
        }
    }
}
 
func addCasaToCorrespondingArray(settings: UserSettings, casa: Casa) {
     if casa.tipo == "adventure" {
        settings.adventures.append(casa)
     } else if casa.tipo == "apartment" {
        settings.apartments.append(casa)
     } else {
        settings.propiedades.append(casa)
     }
 }

struct HomeView: View {
    @State var selectedProperty = Casa()
    @EnvironmentObject var settings: UserSettings
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HStack {
                    VStack {
                        Text("En Logi estamos consientes de la actual situación por la cual el mundo está pasando, son tiempos difíciles en los cuales más que nunca debemos de estar unidos y bien informados, por la misma razón hemos decidido tomar cartas en el asunto. Te invitamos a conocer un poco más sobre esto en www.logi.com/iniciativaCOVID19.")
                            .font(.body)
                            .fontWeight(.light)
                            .frame(width: 350, height: 200)
                            .padding()
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .shadow(radius: 20)
                            .cornerRadius(15.0)
                            .modifier(ShadowModifier())
                    }
                }
                
                Spacer()
                    
                VStack {
                    HStack {
                        Text("Top Destinations")
                            .font(.system(size: 28, weight: .bold))
                            .multilineTextAlignment(.leading)
                            .frame(width: 350, height: 20, alignment:
                                .leading)
                            .padding(.init(top: 35, leading: 15, bottom: 5, trailing: 30))
                    }
                    
                    PropertyList(selectedProperty: $selectedProperty, propiedades: settings.propiedades)
                         
                }
            
                HStack {
                    Text("Adventures")
                        .font(.system(size: 28, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, height: 20, alignment: .leading)
                        .padding(.init(top: 35, leading: 15, bottom: 5, trailing: 30))
                }
                
                PropertyList(selectedProperty: $selectedProperty, propiedades: settings.adventures)
                    
                HStack {
                    VStack {
                        Text("On the job")
                            .font(.system(size: 28, weight: .bold))
                            .multilineTextAlignment(.leading)
                            .frame(width: 350, height: 20, alignment: .leading)
                            .padding(.init(top: 35, leading: 15, bottom: 5, trailing: 30))
                        
                        Text("Boost your business trip")
                            .font(.headline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.leading)
                            .frame(width: 350, height: 20, alignment: .leading)
                            .padding((.init(top: 10, leading: 15, bottom: 5, trailing: 30)))
                            
                    }
                }
                PropertyList(selectedProperty: $selectedProperty, propiedades: settings.apartments)
            }
            CardDetail(propiedad: $selectedProperty)
                .offset(y: selectedProperty.precio != -1 ? 0 : screen.height)
                .animation(.easeIn)
        }
        .onAppear(){
            fetchAll(settings: self.settings)
        }
    }
}






