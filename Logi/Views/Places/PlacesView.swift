//
//  PlacesView.swift
//  Logi
//
//  Created by Manuel on 23/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct PlacesView: View {
    @Binding var selectedTab: Tab
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Places")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 350, height: 30, alignment: .leading)
                        .padding()
                    if settings.favs.isEmpty {
                        Text("You don´t have anything saved, go explore!")
                            .font(.headline)
                            .fontWeight(.light)
                            .frame(width: 350, height: 30, alignment: .leading)
                            .padding()
                        
                        Image("Card4")
                            .frame(width: 350, height: 250, alignment: .center)
                            .padding()
                        
                        Button(action: {
                            self.selectedTab = Tab.home
                        }) {
                            Text("Go Explore!")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(30)
                                .frame(width: 300, height: 50)
                                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                                .cornerRadius(15.0)
                                .modifier(ShadowModifier())
                        }
                    } else {
                        List {
                            ForEach(self.settings.favs, id: \.self) { propiedad in
                                SearchCard(propiedad: propiedad)
                            }
                        }
                    }
               }
            }
            
            Spacer()
        }
    }
}
