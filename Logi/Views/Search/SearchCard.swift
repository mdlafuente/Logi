//
//  SearchCard.swift
//  Logi
//
//  Created by Manuel on 10/04/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct SearchCard: View {
    @State var isFavOn: Bool = true
    
    var id = UUID()
    var image: String
    var location: String
    var name: String
    var capacity: String
    
    var body: some View {
        
        VStack {
            Image(image)
                .resizable()
                .frame(height: 200)
                .aspectRatio(contentMode: .fit)
            
            
            HStack {
                VStack(alignment: .leading){
                    Text(location)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(capacity)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                
                VStack {
                    Button(action: {
                        self.isFavOn.toggle()
                    }) {
                        Image(systemName: isFavOn ? "heart" : "heart.fill")
                            .foregroundColor(isFavOn ? .black : Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .font(.title)
                    }
                }
                .padding()
                
                Spacer()
                    .frame(width: 0)
            }
            .padding()
            
            
        }
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
                .modifier(ShadowModifier())
            
        )
            .padding([.top, .horizontal])
        
    }
}
struct SearchCard_Previews: PreviewProvider {
    static var previews: some View {
        SearchCard(image: "casaSm1", location: "San Miguel de Allende", name: "Casa Román", capacity: "8 - 10 personas")
        
    }
}

