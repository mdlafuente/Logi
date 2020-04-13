//
//  TabBar.swift
//  Logi
//
//  Created by Manuel on 19/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

enum Tab: Hashable {
    case home
    case places
    case inbox
    case profile
}

struct TabBar: View {
    @State var selectedTab: Tab = .home
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            TabView(selection: $selectedTab){
                HomeView().tabItem {
                    Image(systemName: "house.fill")
                    Text("HOME")
                }.tag(Tab.home)
                
                PlacesView(selectedTab: $selectedTab).tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("PLACES")
                }.tag(Tab.places)
                
                SearchView().tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("SEARCH")
                }.tag(Tab.inbox)
                
                ProfileView().tabItem {
                    Image(systemName: "person.fill")
                    Text("PROFILE")
                }.tag(Tab.profile)
            }
        }
    }

    struct TabBar_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
}
