//
//  InsertGalleryView.swift
//  InsertGalleryView
//
//  Created by Dustin Trinh on 2021-08-30.
//

import SwiftUI

struct InsertGalleryView: View {
    //MARK: PROPERTIES
    
    let animal: Animal
    
    //MARK: BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id:\.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }//For Loop
            }//:HSTACK
        }//:SCROLLVIEW
    }
}
    //MARK: PREVIEW
struct InsertGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertGalleryView(animal: animals[4])
            .padding()
    }
}
