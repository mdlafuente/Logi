//
//  ChatView.swift
//  Logi
//
//  Created by Manuel on 23/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Inbox")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 350, height: 30, alignment: .leading)
                        .padding()
                    
                    Text("You have no unread messages")
                        .font(.headline)
                        .fontWeight(.light)
                        .frame(width: 350, height: 30, alignment: .leading)
                        .padding()
                }
            }
            Spacer()
        }
    }
}
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
