//
//  HeaderDetailView.swift
//  HeaderDetailView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//:VSTACK
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
    }
}
