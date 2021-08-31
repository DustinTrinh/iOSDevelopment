//
//  FactView.swift
//  FactView
//
//  Created by Dustin Trinh on 2021-08-30.
//

import SwiftUI

struct FactView: View {
    //MARK: PROPERTIES
    let animal: Animal
    
    //MARK: BODY
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id:\.self) { item in
                    Text(item)
                }
            }//:TABVIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:GROUPBOX
        
    }
}
    //MARK: PREVIEW
struct FactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        FactView(animal: animals[1])
    }
}
