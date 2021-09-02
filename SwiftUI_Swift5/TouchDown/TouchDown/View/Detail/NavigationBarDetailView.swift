//
//  NavigationBarDetailView.swift
//  NavigationBarDetailView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: PROPERTIES
    @EnvironmentObject var shop: Shop
    
    
    //MARK: BODY
    var body: some View {
        HStack{
            Button(action:{
                feedback.impactOccurred()
                withAnimation(.easeIn){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action:{}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
        }//:HSTACK
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
    }
}
