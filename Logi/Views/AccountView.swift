//
//  AccountView.swift
//  Logi
//
//  Created by Manuel on 17/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
         VStack {
                   Spacer()
                   
                   VStack(spacing: 16) {
                       Text("Manuel De la Fuente")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding(.top)
                       
                       Spacer()
                       
                       AccountRow(title: "Account", icon: "gear")
                       AccountRow(title: "Payment method", icon: "creditcard")
                       AccountRow(title: "Sign out", icon: "square.and.arrow.up")
                    
                        .padding(.bottom)
                       
                   }
                   .frame(maxWidth: .infinity)
                   .frame(height: 300)
                   .background(BlurView(style: .systemMaterial))
                   .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                   .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                   .padding(.horizontal, 30)
                   .overlay(
                       Image("Avatar")
                           .resizable()
                           .aspectRatio(contentMode: .fill)
                           .frame(width: 60, height: 60)
                           .clipShape(Circle())
                           .offset(y: -150)
                       )
               }
               .padding(.bottom, 30)
           }
       }


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

struct AccountRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.5845958222, green: 0.7446598774, blue: 0.8046478426, alpha: 1)))
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120, alignment: .leading)
        }
    }
}
