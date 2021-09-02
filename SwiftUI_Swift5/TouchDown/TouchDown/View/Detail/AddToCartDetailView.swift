//
//  AddToCartDetailView.swift
//  AddToCartDetailView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text(addToCart.uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//:Button
            .padding(15)
            .background(
                Color(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            )
            .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
    }
}
