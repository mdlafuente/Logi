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

/*
class SceneDelegate {
    
    func start() {
        
        if (UserUtils.isAuthenticated) {
            // Logeado
        } else {
            // No Logeado
        }
        
    }
    
}

class UserUtils {
    static let isAuthenticated: Bool = Auth.auth().currentUser != nil
}
*/

// Estructura Fav 
// users/\(uid)/favorites/\(propertyId)
