import SwiftUI

struct StartView: View {
    @State private var isDistrictViewActive = false  
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 192/255, green: 219/255, blue: 148/255), Color(red: 79/255, green: 117/255, blue: 110/255)]),
                               startPoint: .topTrailing,
                               endPoint: .bottomLeading)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    Text("KiezKumpan")
                        .font(.system(size: 40))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .kerning(2.3)
                        .font(Font.custom("Raleway-Regular", size: 40))
                        .padding(.top, 60)
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 1)
                        .frame(width: 350)
                        .padding(.horizontal, 20)
                    
                    Text("Finde alles was du suchst und plane ganz einfach mit KiezKumpan. Dein Kiez-Vergleich!")
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .kerning(0.5)
                        .frame(maxWidth: 350)
                        .font(Font.custom("Raleway-Regular", size: 18))
                        .padding(.top, 5)
                    
                    ZStack {
                        Image("Bezirke-von-Berlin")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 320)
                            .padding(.bottom, 300)
                        
                        Image("Ikons")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 410, height: 400)
                            .padding(.top, 220)
                        
                        VStack {
                            Spacer()
                            NavigationLink(destination: ContentView()) {
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
                            
                            Button(action: {
                                isDistrictViewActive = true
                            }) {
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
                            .fullScreenCover(isPresented: $isDistrictViewActive) {
                                DistrictView()
                            }
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
