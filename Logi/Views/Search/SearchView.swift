//
//  ChatView.swift
//  Logi
//
//  Created by Manuel on 23/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText : String = ""
    @ObservedObject var controller = SearchController()
       
    var body: some View {
        VStack {
 /*           HStack {
                TextField("Search", text: self.$searchText)
                    .frame(width: 350, height: 20)
                    .padding()
                    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .shadow(radius: 20)
                    .cornerRadius(15.0)
                    .modifier(ShadowModifier())
             }
 */
            SearchBar(text: $searchText)
            List {
                ForEach(self.controller.propiedades.filter {
                    self.searchText.isEmpty ? true : $0.nombre.lowercased().contains(self.searchText.lowercased())
                }, id: \.self) { propiedad in
                    SearchCard(image: propiedad.imagen, location: propiedad.ubicacion, name: propiedad.nombre, capacity: propiedad.capacidad)
                }
            }
        }
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
