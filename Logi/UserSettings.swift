//
//  UserSettings.swift
//  Logi
//
//  Created by Manuel on 04/04/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var loggedIn : Bool = false
    @Published var email = ""
    @Published var favs = [Casa]()
    
    @Published var propiedades = [Casa]()
    @Published var adventures = [Casa]()
    @Published var apartments = [Casa]()

}

struct StartView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        if settings.loggedIn {
            return AnyView(TabBar())
        } else {
            return AnyView(LoginView())
        }
    }
}

