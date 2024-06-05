//
//  StartView.swift
//  KiezKompare
//
//  Created by Gizem Biliktü on 05.06.24.
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
                    Text("KiezKumpan")
                        .font(.system(size: 40))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .offset(x: 0, y: -90)
                        .multilineTextAlignment(.center)
                        .kerning(2.3)
                        .font(Font.custom("Raleway-Regular", size: 40))
                                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 1)
                        .frame(width: 350)
                        .padding(.horizontal, 20)
                        .offset(x: 0, y: -102)

                    
                    Text("Finde alles was du suchst und plane ganz einfach mit KiezKumpan. Dein Kiez-Vergleich!")
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .offset(x: 0, y: -94)
                        .multilineTextAlignment(.center)
                        .kerning(0.5)
                        .frame(maxWidth: 350)
                        .font(Font.custom("Raleway-Regular", size: 18))
                    
                   
                    Image("Bezirke-von-Berlin")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: 0, y: -70)
                        .frame(width: 320)
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Navigieren")
                            .fontWeight(.light)
                            .foregroundColor(.black)
                            .padding(.horizontal, 25)
                            .padding(.bottom, 16)
                            .padding(.top, 16)
                            .background(Color.white)
                            .cornerRadius(35)
                            .offset(x: 0, y: 0)
                            .kerning(1.3)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        // Hier kommt der Code, der ausgeführt werden soll, wenn der Button gedrückt wird
                    }) {
                        Text("Vergleichen")
                            .fontWeight(.light)
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 16)
                            .padding(.top, 16)
                            .background(Color.white)
                            .cornerRadius(30)
                            .offset(x: 0, y: 10)
                            .kerning(1.3)
                    }
                   
                }
                Image("Ikons")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(x: 0, y: 215)
                    .frame(width: 410, height: 400)
                    .multilineTextAlignment(.center)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

