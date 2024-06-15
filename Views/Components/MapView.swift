import SwiftUI
import GoogleMaps

struct MapView: UIViewRepresentable {
    let locations: [Location]
    
    func makeUIView(context: Context) -> GMSMapView {
        GMSServices.provideAPIKey("AIzaSyCIRKZQQ3lsC-mDwnkxd88P6-xN2hmiDow")
      

        let berlinMitteLatitude = 52.5163
        let berlinMitteLongitude = 13.3777
        let camera = GMSCameraPosition.camera(withLatitude: berlinMitteLatitude,longitude: berlinMitteLongitude, zoom: 12.0)
        let mapView = GMSMapView(frame: .zero, camera: camera)
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 52.5163, longitude: 13.3777)
        marker.title = "Berlin"
        marker.snippet = "Germany"
        marker.map = mapView
        
        for location in locations {
                    let marker = GMSMarker()
                    marker.position = location.coordinate
                    marker.title = location.name
                    marker.snippet = location.address
                    marker.map = mapView
                }
        
        return mapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {}
}


