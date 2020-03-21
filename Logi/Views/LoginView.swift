//
//  LoginView.swift
//  Logi
//
//  Created by Manuel on 10/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI
import UIKit

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
            .edgesIgnoringSafeArea(.all)
            
            Login()
            }
        }
    }

// F19333

struct Login: View {
    @State private var email = ""
    @State private var password = ""
      
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("¡ Bienvenido a Logi !")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding([.top, .bottom], 30.0)
            
        
            
            TextField("Email", text: self.$email)
                .frame(width: 350, height: 20)
                .padding()
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .shadow(radius: 20)
                .cornerRadius(15.0)
                .modifier(ShadowModifier())
            
            SecureField("Password", text: self.$password)
                .frame(width: 350, height: 20)
                .padding()
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(15.0)
                .modifier(ShadowModifier())
            
            Button(action: {}){
            Text("Iniciar sesión con otro")
                .frame(width: 300, height: 80)
                .modifier(FontModifier())
            }
            
            Button(action: {}){
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(30)
                    .frame(width: 300, height: 50)
                    .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
                    .cornerRadius(15.0)
                    .modifier(ShadowModifier())
                
            }
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
