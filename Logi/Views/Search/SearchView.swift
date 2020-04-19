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
            SearchBar(text: $searchText)
            List {
                ForEach(self.controller.propiedades.filter {
                    self.searchText.isEmpty ? true : $0.nombre.lowercased().contains(self.searchText.lowercased())
                }, id: \.self) { propiedad in
                    SearchCard(propiedad : propiedad)
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
