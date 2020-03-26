//
//  CardList.swift
//  Logi
//
//  Created by Manuel on 11/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct CardList: View {
    @State var showDetail = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Top Destinations")
                        .font(.largeTitle).bold()
                        .padding()
                        
                    CardView(image: "casaSm1", location: "San Miguel de Allende, México.", name: "Casa Román", capacity: "10 - 12")
                        .onTapGesture {
                            self.showDetail.toggle()
                        }
                        
                    CardView(image: "casaPv1", location: "Puerto Vallarta, México.", name: "Casa Arenas", capacity: "10 - 12 personas")
                        .onTapGesture {
                            self.showDetail.toggle()
                        }
                        
                    CardView(image: "dptoCdmx1", location: "Colonia Roma, CDMX", name: "Torre Aura", capacity: "1 - 3 personas")
                        .onTapGesture {
                            self.showDetail.toggle()
                        }
                        
                    CardView(image: "casaCa1", location: "Onatrio, Canadá.", name: "Oak Trail Woods", capacity: "4 - 7 personas")
                        .onTapGesture {
                            self.showDetail.toggle()
                        }
                    
                    CardView(image: "dptoSf1", location: "SunnyVale, CA.", name: "Kifer Rd.", capacity: "2 - 4 personas")
                        .onTapGesture {
                            self.showDetail.toggle()
                        }
                }
            }
        
            CardDetail()
                .offset(y: showDetail ? 0 : screen.height)
                .animation(.default)
        }
    }
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        CardList() 
    }
}
