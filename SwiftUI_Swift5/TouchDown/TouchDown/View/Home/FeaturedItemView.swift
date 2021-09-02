//
//  FeaturedItemView.swift
//  FeaturedItemView
//
//  Created by Dustin Trinh on 2021-09-01.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: PROPERTIES
    let player: Player
    
    //MARK: BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[1])
    }
}
