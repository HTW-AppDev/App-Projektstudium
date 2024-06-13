struct MapView: View {
    // Beispiel-Datenbank mit Standorten
    let locations = [
        Location(latitude: 52.5200, longitude: 13.4050), // Berlin
        Location(latitude: 48.8566, longitude: 2.3522),  // Paris
        Location(latitude: 51.5074, longitude: -0.1278)  // London
    ]
    
    var body: some View {
        VStack {
            Text("Google Maps mit Standorten")
                .font(.largeTitle)
                .padding()
            
            GoogleMapView(apiKey: "AIzaSyCIRKZQQ3lsC-mDwnkxd88P6-xN2hmiDow", locations: locations)
                .edgesIgnoringSafeArea(.all)
        }
    }
}


