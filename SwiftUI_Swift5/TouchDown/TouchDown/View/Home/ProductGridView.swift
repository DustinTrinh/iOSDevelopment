//
//  ProductGridView.swift
//  ProductGridView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct ProductGridView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: BODY
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, content: {
            ForEach(products){
                prod in
                ProductItemView(product: prod)
                    .onTapGesture {
                        feedback.impactOccurred()
                        withAnimation(.easeOut){
                            shop.selectedProduct = prod
                            shop.showingProduct = true
                        }
                    }
            }//:LOOP
        })//:LAZYVGRID
            .padding(15)
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView().environmentObject(Shop())
    }
}
