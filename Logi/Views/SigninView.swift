//
//  SigninView.swift
//  Logi
//
//  Created by Manuel on 30/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI
import Firebase

func createUser(email: String, password: String, _ callback: ((Error?) -> ())? = nil){
      Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
          if let e = error{
              callback?(e)
              return
          }
          callback?(nil)
      }
}

struct SigninView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        
    
        ZStack(alignment: .top) {
            
            Color(#colorLiteral(red: 0.9742895095, green: 0.9308254985, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                GeometryReader { geometry in
                    Text("New to Logi?")
                        .font(.system(size: geometry.size.width/10, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: 375, maxHeight: 100)
                .padding(.top, 100)
                
            }
            .multilineTextAlignment(.center)
            .padding(.top, 50)
            .frame(maxHeight: .infinity)
            .frame(maxWidth: .infinity)
            .background(Image(uiImage: #imageLiteral(resourceName: "Card4") ), alignment: .bottom)
            .offset(x: 0, y: -350)
            .padding(.bottom, 100)
            .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .edgesIgnoringSafeArea(.all)
        
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "person.fill")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.gray)
                            .frame(width: 10, height: 10)
                            .background(Color.white)
                            .padding()
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    
                    TextField("EMAIL", text: $email)
                        .padding()
                }
  
                Divider()
                
                HStack {
                    HStack {
                        Image(systemName: "lock.fill")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.gray)
                            .frame(width: 10, height: 10)
                            .padding()
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    
                    SecureField("PASSWORD", text: $password)
                        .padding()
                }
            }
            .frame(width: 350, height: 120, alignment: .bottom)
            .padding()
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(30)
            .modifier(ShadowModifier())
            .offset(x: 0, y: 480)
            
            HStack {
                Button(action: {}){
                    Text("Create an account")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding([.top, .bottom])
                        .frame(width: 350, height: 50)
                        .background(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
                        .frame(width: 350, height: 50)
                        .cornerRadius(15.0)
                        .modifier(ShadowModifier())
                        
                }
                .offset(x: 0, y: 675)
            }
        }
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}

