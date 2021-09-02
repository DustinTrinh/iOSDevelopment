//
//  SectionView.swift
//  SectionView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct SectionView: View {
    //MARK: PROPERTIES
    @State var rotateClockwise: Bool
    
    //MARK: BODY
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            
            Text(category.uppercased())
                .fontWeight(.bold)
                .font(.footnote)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
            
        }//:VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
    }
}
