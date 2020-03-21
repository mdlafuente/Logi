//
//  Account.swift
//  Logi
//
//  Created by Manuel on 21/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

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
