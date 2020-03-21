//
//  CardView.swift
//  Logi
//
//  Created by Manuel on 10/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State private var search = ""
    @State var showAccount = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    HStack {
                        TextField("Search", text: self.$search)
                            .frame(width: 350, height: 20)
                            .padding()
                            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .shadow(radius: 20)
                            .cornerRadius(15.0)
                            .modifier(ShadowModifier())
                    }
                }
                    
                HStack {
                    VStack {
                        Text("We encourage all members of our comunity to aknowledge respect, equity, and positive recognition of differences are all cultivated, and the social and institutional response to disability poses no barrier to a positive experience.")
                            .font(.body)
                            .fontWeight(.light)
                            .frame(width: 350, height: 150)
                            .padding()
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .shadow(radius: 20)
                            .cornerRadius(15.0)
                            .modifier(ShadowModifier())
                    }
                }
                
                Spacer()
                    
                VStack {
                    HStack {
                        Text("Top Destinations")
                            .font(.system(size: 28, weight: .bold))
                            .multilineTextAlignment(.leading)
                            .frame(width: 350, height: 20, alignment:
                                .leading)
                            .padding(.init(top: 35, leading: 15, bottom: 5, trailing: 30))
                    }
                    
                    TopDestinations()
                         
                }
            
                HStack {
                    Text("Adventures")
                        .font(.system(size: 28, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .frame(width: 350, height: 20, alignment: .leading)
                        .padding(.init(top: 35, leading: 15, bottom: 5, trailing: 30))
                }
                
                Adventures()
                    
                HStack {
                    VStack {
                        Text("On the job")
                            .font(.system(size: 28, weight: .bold))
                            .multilineTextAlignment(.leading)
                            .frame(width: 350, height: 20, alignment: .leading)
                            .padding(.init(top: 35, leading: 15, bottom: 5, trailing: 30))
                        Text("Boost your business trip")
                            .font(.headline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.leading)
                            .frame(width: 350, height: 20, alignment: .leading)
                            .padding((.init(top: 10, leading: 15, bottom: 5, trailing: 30)))
                            
                    }
                }
                    
                OnTheJob()
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}






