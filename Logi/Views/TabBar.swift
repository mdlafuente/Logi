//
//  TabBar.swift
//  Logi
//
//  Created by Manuel on 19/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("HOME")
            }
            
            HomeView().tabItem {
                Image(systemName: "hand.thumbsup.fill")
                Text("PLACES")
            }
            
            HomeView().tabItem {
                Image(systemName: "message.fill")
                Text("MESSAGES")
            }
            
            HomeView().tabItem {
                Image(systemName: "person.fill")
                Text("PROFILE")
            }
                
        .edgesIgnoringSafeArea(.top)
            
        }
    }

    struct TabBar_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
}
