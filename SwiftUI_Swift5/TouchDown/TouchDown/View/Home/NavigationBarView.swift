//
//  NavigationBarView.swift
//  NavigationBarView
//
//  Created by Dustin Trinh on 2021-09-01.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: PROPERTIES
    @State private var isAnimated: Bool = false
    
    //MARK: BODY
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })//:BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 1.0)){
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x:13, y:-10)
                }//:ZSTACK
                
            })//:BUTTON
        }//:HSTACK
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
