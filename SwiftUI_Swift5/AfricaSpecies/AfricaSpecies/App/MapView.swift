//
//  MapView.swift
//  MapView
//
//  Created by Dustin Trinh on 2021-08-30.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: PROPERTIES
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: BODY
    var body: some View {
        //MARK: Basic Map
        //Map(coordinateRegion: $region)
        
        //MARK: MAP WITH ANNOTATIONS (ADVANCE)
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            //1. Basic style
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //2.Better version, can be interactive and customizable
            /*
            MapAnnotation(coordinate: item.location){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }//:ANNOTATION
            */
            
            //3. Best Map with customize annotation
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        })//:MAP
            .overlay(
                HStack {
                    Image("compass")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                    
                    VStack(alignment: .leading, spacing: 3){
                        HStack{
                            Text("Latitude:")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.latitude)")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }//:HSTACK
                        
                        Divider()
                        
                        HStack{
                            Text("Longitude:")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            Spacer()
                            Text("\(region.center.longitude)")
                                .font(.footnote)
                                .foregroundColor(.white)
                        }//:HSTACK
                        
                    }
                    
                }//:HSTACK
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                    .background(
                        Color.black
                            .cornerRadius(8)
                            .opacity(0.7)
                    )
                    .padding()
                , alignment: .top
            )
    }
}
    //MARK: PROPERTIES
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

/*
item in
   
   //1. Basic style
   MapMarker(coordinate: item.location, tint: .accentColor)
   
   //2.Better version, can be interactive and customizable
   MapAnnotation(coordinate: item.location){
       Image("logo")
           .resizable()
           .scaledToFit()
           .frame(width: 32, height: 32, alignment: .center)
   }//:ANNOTATION
}
*/
