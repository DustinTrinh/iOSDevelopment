//
//  BrandGridView.swift
//  BrandGridView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands){
                    brand in
                    BrandItemView(brand: brand)
                }
            })//:LAZYHGRID
        })//:SCROLLVIEW
            .frame(height:200)
            .padding(15)
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
