//
//  ViewController.swift
//  KiezKompare
//
//  Created by not Ha Lan Nguyen on 15/6/24.
//

import SwiftUI

import UIKit
import GoogleMaps

class ViewController: UIViewController, GMSMapViewDelegate {

  private var mapView: GMSMapView!

  override func loadView() {

    // Load the map at set latitude/longitude and zoom level
    let camera:GMSCameraPosition = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 11)

    mapView = GMSMapView(frame: .zero, camera: camera)
    self.view = mapView
    mapView.delegate = self
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

}
/*struct ViewController: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ViewController()
}*/

