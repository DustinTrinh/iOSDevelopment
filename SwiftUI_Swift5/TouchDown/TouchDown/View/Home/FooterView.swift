//
//  FooterView.swift
//  FooterView
//
//  Created by Dustin Trinh on 2021-09-01.
//

import SwiftUI

struct FooterView: View {
    //MARK: PROPERTIES
    
    //MARK: BODY    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(footerNote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text(copyrightNote)
                .fontWeight(.bold)
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
