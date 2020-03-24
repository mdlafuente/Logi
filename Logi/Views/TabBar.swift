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
        TabView(selection: $selectedTab){
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("HOME")
            }.tag(Tab.home)
            
            PlacesView(selectedTab: $selectedTab).tabItem {
                Image(systemName: "hand.thumbsup.fill")
                Text("PLACES")
            }.tag(Tab.places)
            
            ChatView().tabItem {
                Image(systemName: "message.fill")
                Text("INBOX")
            }.tag(Tab.inbox)
            
            ProfileView().tabItem {
                Image(systemName: "person.fill")
                Text("PROFILE")
            }.tag(Tab.profile)
        }
        .edgesIgnoringSafeArea(.top)
    }

    struct TabBar_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
}
