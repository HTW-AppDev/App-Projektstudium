import SwiftUI

struct DistrictView: View {
    
    @State private var isEigenschaftenSelected = true
    @State private var isHighlightsSelected = false
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 192/255, green: 219/255, blue: 148/255), Color(red: 79/255, green: 117/255, blue: 110/255)]),
                               startPoint: .topLeading,
                               endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    HStack(alignment: .center) {
                        Spacer()
                        Button(action: {
                            // Add code for back navigation if necessary
                        }) {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding(.top, 60)
                        }
                        Spacer()

                        Text("KiezKumpan")
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .kerning(2.3)
                            .font(Font.custom("Raleway-Regular", size: 40))
                            .padding(.top, 60)
                        
                        Button(action: {
                            // Add code for home navigation if necessary
                        }) {
                            Image(systemName: "house")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding(.top, 60)
                                .padding(.leading, 7)
                        }
                        Spacer()
                    }
                    
                    ZStack {
                        Rectangle()
                            .colorInvert()
                            .frame(height: 750)
                        
                        VStack {
                            Image("Mitte")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .frame(height: 270)
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                            
                            HStack(spacing: 4) {
                                Button(action: {
                                    isEigenschaftenSelected = true
                                    isHighlightsSelected = false
                                }) {
                                    Text("Eigenschaften")
                                        .padding(8)
                                        .frame(maxWidth: 110)
                                        .background(isEigenschaftenSelected ? Color(red: 210/255, green: 210/255, blue: 210/255) : Color(red: 160/255, green: 190/255, blue: 100/255))
                                        .cornerRadius(6)
                                        .font(Font.custom("Raleway-Regular", size: 13))
                                        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                                }

                                Button(action: {
                                    isEigenschaftenSelected = false
                                    isHighlightsSelected = true
                                }) {
                                    Text("Highlights")
                                        .padding(8)
                                        .frame(maxWidth: 110)
                                        .background(isHighlightsSelected ? Color(red: 210/255, green: 210/255, blue: 210/255) : Color(red: 120/255, green: 157/255, blue: 150/255))
                                        .cornerRadius(6)
                                        .font(Font.custom("Raleway-Regular", size: 13))
                                        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                                }

                                NavigationLink(destination: LeereView()) {
                                    Text("Compare")
                                        .padding(8)
                                        .frame(maxWidth: 110)
                                        .background(Color(red: 79/255, green: 117/255, blue: 110/255))
                                        .cornerRadius(6)
                                        .font(Font.custom("Raleway-Regular", size: 13))
                                        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                                }
                            }
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                            
                            ScrollView {
                                VStack(alignment: .leading) {
                                    if isEigenschaftenSelected {
                                        Text("Eigenschaften")
                                            .font(.system(size: 24))
                                            .kerning(3)
                                            .padding(.top, 10)
                                            .padding(.bottom, 18)
                                            .font(Font.custom("Raleway-Regular", size: 24))
                                        
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text("Party Score")
                                                    .padding(.bottom, 7)
                                                Text("Kriminalität")
                                                    .padding(.bottom, 7)
                                                Text("Grünflächenanteil")
                                                    .padding(.bottom, 7)
                                                Text("Bademöglichkeiten pro km^2")
                                                    .padding(.bottom, 7)
                                                Text("Restaurants pro km2")
                                                    .padding(.bottom, 7)
                                                Text("Cafes pro km2")
                                                    .padding(.bottom, 7)
                                                Text("Sportplätze pro km2")
                                                Spacer()
                                            }
                                            
                                            Divider()
                                                .padding(15)
                                            
                                            VStack(alignment: .trailing) {
                                                Text("6")
                                                    .padding(.bottom, 7)
                                                Text("3")
                                                    .padding(.bottom, 7)
                                                Text("8,3%")
                                                    .padding(.bottom, 7)
                                                Text("4,2")
                                                    .padding(.bottom, 7)
                                                Text("1,5")
                                                    .padding(.bottom, 7)
                                                Text("0,3")
                                                    .padding(.bottom, 7)
                                                Text("0,5")
                                                    .padding(.bottom, 7)
                                                Spacer()
                                            }
                                        }
                                    } else if isHighlightsSelected {
                                        VStack {
                                            Text("Highlights")
                                                .multilineTextAlignment(.leading)
                                                .font(.system(size: 24))
                                                .kerning(3)
                                                .padding(.top, 10)
                                                .padding(.bottom, 18)
                                                .font(Font.custom("Raleway-Regular", size: 24))
                                            
                                            Text("Alexanderplatz")
                                                .multilineTextAlignment(.center)
                                                .bold()
                                                .font(Font.custom("Raleway-Regular", size: 14))
                                                .kerning(1)
                                                .padding(.bottom, 5)

                                            Text("10178 Berlin")
                                                .multilineTextAlignment(.center)
                                                .font(Font.custom("Raleway-Regular", size: 14))
                                                .kerning(1)
                                                .padding(.top, 4)
                                                .padding(.bottom, 4)
                                            
                                            Image("berlin-alexanderplatz")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .cornerRadius(8)
                                                .frame(width: 300)
                                                .frame(height: 230)
                                            
                                            Divider()
                                                .frame(width: 305)
                                            
                                            Text("Brandenburger Tor")
                                                .multilineTextAlignment(.center)
                                                .bold()
                                                .font(Font.custom("Raleway-Regular", size: 14))
                                                .kerning(1)
                                                .padding(.top, 10)
                                                .padding(.bottom, 5)

                                            Text("10178 Berlin")
                                                .multilineTextAlignment(.center)
                                                .font(Font.custom("Raleway-Regular", size: 14))
                                                .kerning(1)
                                                .padding(.top, 4)
                                                .padding(.bottom, 4)
                                            
                                            Image("brandenburger-tor")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .cornerRadius(8)
                                                .frame(width: 300)
                                                .frame(height: 230)
                                                .padding(.bottom, 10)
                                        }
                                    }
                                }
                                .padding(.top, 8)
                                .padding(.horizontal, 24)
                                .background(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.gray, lineWidth: 0.4))
                            }
                            .padding(.bottom, 50)
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
