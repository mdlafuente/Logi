//
//  CView.swift
//  Logi
//
//  Created by Manuel on 10/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct CardDetail: View {
    var body: some View {
        
            
        VStack(alignment: .trailing) {
            ZStack(alignment: .top) {
                Image("casaSm1")
                    .resizable()
                    .frame(height: 400)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .modifier(ShadowModifier())
                    .edgesIgnoringSafeArea(.top)
                        
                HStack {
                    Spacer()
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .frame(width: 36, height: 36)
                        .background(Color.black)
                        .clipShape(Circle())
                        .padding(.trailing, 20)
                }
            }
                
                    
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("Casa Solera")
                        .font(.title).bold()
                    
                    HStack {
                        Text("San Miguel de Allende")
                            .font(.subheadline).bold()
                        Spacer()
                        Text("8 personas")
                            .font(.subheadline)
                    }
                }
                .padding(25)
                
                Text("Hermosa propiedad situada a 5 minutos del centro historico de San Miguel de Allende.")
                    .padding(25)
                
                Text("Casa Solera ofrece un entorno moderno y rústico. Predomina un entorno acogedor que permite a sus huespedes disfrutar de las amenidades que la casa ofrece.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(25)
            }
            Spacer()
        }
        .background(Color.white)
    }
}
    

struct CardDetail_Previews: PreviewProvider {
    static var previews: some View {
        CardDetail()
    }
}

