//
//  TitleView.swift
//  TitleView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct TitleView: View {
    //MARK: PROPERTIES
    var title: String
    
    //MARK: BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }//:HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
    }
}
