//
//  QuantityFavouriteDetailView.swift
//  QuantityFavouriteDetailView
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: PROPERTIES
    @State private var counter: Int = 0
    
    //MARK: BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0{
                    counter -= 1
                    feedback.impactOccurred()
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                    feedback.impactOccurred()
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
        
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
    }
}
