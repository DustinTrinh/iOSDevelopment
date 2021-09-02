//
//  TopDetailView.swift
//  TopDetailView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct TopDetailView: View {
    //MARK: PROPERTIES
    @State private var isAnimate: Bool = false
    @EnvironmentObject var shop: Shop
    
    //MARK: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })//:VSTACK
                .offset(y: isAnimate ? -50 : -75)
            
            Spacer()
            
            //Photo
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimate ? 0 : -35)
        })//:HSTACK
            .onAppear(perform: {
                withAnimation(.easeOut(duration: 0.85)){
                    isAnimate.toggle()
                }
            })
    }
}

struct TopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailView()
            .environmentObject(Shop())
    }
}
