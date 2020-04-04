//
//  ContentView.swift
//  Logi
//
//  Created by Manuel on 25/03/20.
//  Copyright © 2020 Manuel. All rights reserved.
//

import SwiftUI

struct CardDetail: View {
    @State var show = false
    
    
    
    var body: some View {
        ScrollView{
            
            VStack{
                VStack{
                    HStack(alignment: .top){
                        
                        Spacer()
                        
                        ZStack{
                            Image("casaSm1")
                                .opacity(show ? 0 : 1)
                                .frame(maxWidth: show ? .infinity : screen.width, maxHeight: show ? 460 : 280)
                            
                            VStack{
                                Image(systemName: "xmark")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 36, height: 36)
                            .background(Color.black)
                            .clipShape(Circle())
                            .opacity(show ? 1 : 0)
                        }
                    }
                    Spacer()
                }
                .padding(show ? 30 : 20)
                .padding(.top, show ? 30 : 0)
                .frame(maxWidth: show ? .infinity : screen.width, maxHeight: show ? 460 : 280)
//                .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
                
                VStack(alignment: .leading, spacing: 30){
                    
                    Text("Casa Román")
                        .font(.title).bold()
                        .padding(.top, 30)
                    
                    Text("San Miguel de Allende")
                        .font(.headline)
                        .foregroundColor(.secondary)
                   
                    HStack {
                        Text("$2,980")
                            .font(.subheadline).bold()
                            .frame(width: 100, height: 30, alignment: .leading)
                        
                        Text("10 - 12 personas")
                            .font(.subheadline).bold()
                            .frame(width: 200, height: 30, alignment: .trailing)
                    }
                    
                    Text("Hermosa propiedad con acabado México contemporaneo, dentro del centro de San Miguel de Allende, a solo 5 minutos de la catedral.")
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)

                    Text("La casa cuenta con cinco cuartos con baño completo, cocina y comedor equipados para 15 personas, terraza con azador y jarín amplio ¡Perfecta para pasar un fin de semana con familia y amigos! ")
                        .multilineTextAlignment(.leading)
                      
                    
                    Text("Minimal coding experience required, such as in HTML and CSS. Please note that Xcode 11 and Catalina are essential. Once you get everything installed, it'll get a lot friendlier! I added a bunch of troubleshoots at the end of this page to help you navigate the issues you might encounter.")
                        .multilineTextAlignment(.leading)
                      
                    
                    Button(action: {}) {
                        Text("Reservar propiedad")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding([.leading, .trailing])
                            .frame(width: 300, height: 50)
                            .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .cornerRadius(15.0)
                            .modifier(ShadowModifier())
                    }
                    .padding(33)
                }

                .padding(30)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .edgesIgnoringSafeArea(.bottom)
//        .background(Color.white)
        .background(BlurView(style: .systemMaterial))
    }
}


struct CardDetail_Previews: PreviewProvider {
    static var previews: some View {
        CardDetail()
    }
}



/*
 @State var show = false
 @State var viewState = CGSize.zero
 @State var showCard = false
 @State var bottomState = CGSize.zero
 @State var showFull = false
 
        ZStack{
            Image("casaSm1")
                .frame(width: showCard ? 375.0 : 340.0, height: 220.0)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius : showCard ? 30 : 20, style: .continuous))
                .shadow(radius: 20)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -100 : 0)
                .blendMode(.hardLight)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showCard.toggle()
                }
                .gesture(
                    DragGesture().onChanged { value in
                        self.viewState = value.translation
                        self.show = true
                        
                    }
                    .onEnded { value in
                        self.viewState = .zero
                        self.show = false
                    }
                )
            
            }
*/
