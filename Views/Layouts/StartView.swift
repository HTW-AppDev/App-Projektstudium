//
//  ContentView.swift
//  KiezKompare
//
//  Created by Gizem Biliktü on 29.04.24.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 192/255, green: 219/255, blue: 148/255), Color(red: 79/255, green: 117/255, blue: 110/255)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                   Spacer()
                    Text("KiezKumpan")
                        .font(.system(size: 40))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        //.offset(y: -90)
                        .multilineTextAlignment(.center)
                        .kerning(2.3)
                        .font(Font.custom("Raleway-Regular", size: 40))
                        .padding(.top, 60)
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 1)
                        .frame(width: 350)
                        .padding(.horizontal, 20)
                        //.offset(y: -102)
                    
                    Spacer()
                    
                    Text("Finde alles was du suchst und plane ganz einfach mit KiezKumpan. Dein Kiez-Vergleich!")
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        //.offset(y: -94)
                        .multilineTextAlignment(.center)
                        .kerning(0.5)
                        .frame(maxWidth: 350)
                        .font(Font.custom("Raleway-Regular", size: 18))
                        .padding(.top,5)
                    
                    
                    ZStack {
                        Image("Bezirke-von-Berlin")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            //.offset(y: -70)
                            .frame(width: 320)
                            .padding(.bottom, 300)
                        
                        
                        Image("Ikons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 410, height: 400)
                            .padding(.top,220)
                        
                        VStack {
                            Spacer()
                            NavigationLink(destination: LeereView()) {
                                Text("Navigieren")
                                    .fontWeight(.light)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 25)
                                    .padding(.vertical, 16)
                                    .background(Color.white)
                                    .cornerRadius(35)
                                    .kerning(1.3)
                                    
                            }
                            .padding(.bottom, 10)
                            
                            NavigationLink(destination: LeereView()) {
                                Text("Vergleichen")
                                    .fontWeight(.light)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 25)
                                    .padding(.vertical, 16)
                                    .background(Color.white)
                                    .cornerRadius(35)
                                    .kerning(1.3)
                            }
                            .padding(.bottom, 115)
                        }
                    }
                                
                }
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
