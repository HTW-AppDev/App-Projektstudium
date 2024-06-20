//
//  DistrictView.swift
//  KiezKompare
//
//  Created by Gizem Biliktü on 20.06.24.
//

import SwiftUI

struct DistrictView: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 192/255, green: 219/255, blue: 148/255), Color(red: 79/255, green: 117/255, blue: 110/255)]),
                               startPoint: .topLeading,
                               endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {
                            // Hier den Code für das Zurücknavigieren einfügen
                        }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        .padding(.trailing, 20)
                        
                        
                        Text("KiezKumpan")
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .kerning(2.3)
                            .font(Font.custom("Raleway-Regular", size: 40))
                            .padding(.top, 60)
                        
                        Button(action: {
                            // Hier den Code für das Zurücknavigieren einfügen
                        }) {
                            Image(systemName: "house")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                        .padding(.leading, 20)
                        
                    }
                    
                    ZStack {
                        Rectangle()
                            .colorInvert()
                            .frame(height: 750)
                        
                        VStack {
                            Image("Mitte")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 320)
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                            
                            HStack {
                                Text("Eigenschaften")
                                    .padding(8)
                                    .background(Color(red: 192/255, green: 219/255, blue: 148/255))
                                    .cornerRadius(10)

                                
                                Text("Highlights")
                                    .padding(8)
                                    .background(Color(red: 79/255, green: 117/255, blue: 110/255))


                                Text("Compare")
                                    .padding(8)
                                    .background(Color(red: 79/255, green: 117/255, blue: 110/255))
                                    .cornerRadius(10)
                                
                            }
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                            
                            VStack(alignment: .leading) {
                                Text("Eigenschaften")
                                    .font(.system(size: 24))
                                    .kerning(3)
                                    .padding(.top, 12)
                                    .padding(.bottom, 18)

                                
                                HStack {
                                    VStack (alignment: .leading) {
                                        Text("Party Score")
                                            .padding(.bottom, 5)
                                        Text("Kriminalität")
                                            .padding(.bottom, 5)

                                        Text("Grünflächenanteil")
                                            .padding(.bottom, 5)

                                        Text("Bademöglichkeiten pro km^2")
                                            .padding(.bottom, 5)

                                        Text("Restaurants pro km2")
                                            .padding(.bottom, 5)

                                        Text("Cafes pro km2")
                                            .padding(.bottom, 5)

                                        Text("Sportplätze pro km2")
                                        Spacer()


                                    }
                                    
                                    Divider()
                                        .padding(15)
                                    
                                    VStack (alignment: .trailing) {
                                        Text("6")
                                            .padding(.bottom, 5)
                                        Text("3")
                                            .padding(.bottom, 5)
                                        Text("8,3%")
                                            .padding(.bottom, 5)
                                        Text("4,2")
                                            .padding(.bottom, 5)
                                        Text("1,5")
                                            .padding(.bottom, 5)
                                        Text("0,3")
                                            .padding(.bottom, 5)
                                        Text("0,5")
                                            .padding(.bottom, 5)
                                        Spacer()
                                    }
                                    
                                }

                            }
                            .padding(6)
                            .padding(.horizontal, 15)
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.gray, lineWidth: 0.4)
                                )
                            .frame(height: 300)
                        }

                        
                    }

                }
                
            }
        }
    }
}

    
struct DistrictView_Previews: PreviewProvider {
    static var previews: some View {
        DistrictView()
    }
}

