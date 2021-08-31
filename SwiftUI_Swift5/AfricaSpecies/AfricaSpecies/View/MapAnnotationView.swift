//
//  MapAnnotationView.swift
//  MapAnnotationView
//
//  Created by Dustin Trinh on 2021-08-31.
//

import SwiftUI

struct MapAnnotationView: View {
    //MARK: PROPERTIES
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    //MARK: BODY
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 51, height: 51, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1-animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
        }
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1
            }
        }
    }
}
    
    //MARK: PREVIEW
struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[2])
    }
}
