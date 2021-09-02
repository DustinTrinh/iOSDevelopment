//
//  ProductItemView.swift
//  ProductItemView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: PROPERTIES
    let product: Product
    
    //MARK: BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //Photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//:ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })//:VSTACK
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[1])
    }
}
