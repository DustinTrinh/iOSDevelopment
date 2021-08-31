//
//  CoverImageView.swift
//  CoverImageView
//
//  Created by Dustin Trinh on 2021-08-30.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(coverImages){ item in
                Image(item.name)
                .resizable()
                .scaledToFill()
            }
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
        
    }
}
    
    //MARK: PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
    }
}
