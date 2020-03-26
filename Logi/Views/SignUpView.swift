//
//  SignUpView.swift
//  Logi
//
//  Created by Manuel on 24/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var account = ""
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
            
            TextField("Account", text: self.$account)
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
                Text("Crear cuenta")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding([.top, .bottom])
                    .frame(width: 300, height: 50)
                    .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                    .cornerRadius(15.0)
                    .modifier(ShadowModifier())
                
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
