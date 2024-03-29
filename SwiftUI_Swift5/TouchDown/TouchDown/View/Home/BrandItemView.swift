//
//  BrandItemView.swift
//  BrandItemView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: PROPERTIES
    let brand: Brand
    //MARK: BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
    }
}
