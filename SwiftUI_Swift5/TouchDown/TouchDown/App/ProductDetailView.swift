//
//  ProductDetailView.swift
//  ProductDetailView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //Detail top
            TopDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail Bottom
            VStack(alignment: .center, spacing: 0, content: {
                
                //Ratings & Sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 25)
                
                //Description
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                //Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                
            })//:VSTACK
                .zIndex(0)
                .padding(.horizontal)
                .background(Color.white
                                .clipShape(CustomShape())
                                .padding(.top, -105)
                
                )
                
            
        })//:VSTACK
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(
                    red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                    .ignoresSafeArea(.all, edges: .all)
            )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}
