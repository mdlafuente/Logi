//
//  ProfileView.swift
//  Logi
//
//  Created by Manuel on 21/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI


struct ProfileView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .edgesIgnoringSafeArea(.top)
                    
                
                VStack(alignment: .center) {
                    Image("perfImg")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .leading)
                        .clipShape(Circle())
                        .padding()
                    
                    VStack {
                        Text(usuario.nombreUsuario)
                            .fontWeight(.bold)
                            .frame(width: 200, height: 50)
                            .font(.headline)
                            .foregroundColor(Color.white)
                    
                        Text("Querétaro, México")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        HStack {
                            ForEach(0 ..< 4) { item in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                    }
                }
            }
            
        VStack(alignment: .center){
            AccountRow(title: "Account", subtitle: "", icon: "gear")
                .padding(30)
            AccountRow(title: "Payment method", subtitle: "", icon: "creditcard")
                .padding(30)
            AccountRow(title: "Personal info.", subtitle: "", icon: "info.circle")
                .padding(30)
            AccountRow(title: "Sign out", subtitle: "", icon: "square.and.arrow.up")
                .padding(30)
        }
            
        Spacer()
            
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

