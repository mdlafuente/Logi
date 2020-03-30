//
//  LoginView.swift
//  Logi
//
//  Created by Manuel on 29/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    
    var body: some View {
        
    
        ZStack(alignment: .top) {
            
            Color(#colorLiteral(red: 0.9742895095, green: 0.9308254985, blue: 1, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                GeometryReader { geometry in
                    Text("Welcome to Logi!")
                        .font(.system(size: geometry.size.width/10, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: 375, maxHeight: 100)
                .padding(.horizontal, 16)
                
                Text("Go See!")
                    .font(.headline)
                    .frame(width: 250)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .multilineTextAlignment(.center)
            .padding(.top, 50)
            .frame(height: 477)
            .frame(maxWidth: .infinity)
            .background(Image(uiImage: #imageLiteral(resourceName: "Card4") ), alignment: .bottom)
            .padding(.bottom, 100)
            .background(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .edgesIgnoringSafeArea(.top)
        
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
                    
                    TextField("EMAIL", text: self.$email)
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
                    
                    SecureField("PASSWORD", text: self.$password)
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
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Forgot password?")
                }
                 .offset(x: -10, y: 675)
                
                Button(action: {}){
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding([.top, .bottom])
                        .frame(width: 180, height: 50)
                        .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        .frame(width: 180, height: 50)
                        .cornerRadius(15.0)
                        .modifier(ShadowModifier())
                        
                }
                .offset(x: 25, y: 675)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
