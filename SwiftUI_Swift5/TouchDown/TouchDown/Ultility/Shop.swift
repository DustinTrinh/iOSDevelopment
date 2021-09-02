//
//  Shop.swift
//  Shop
//
//  Created by Dustin Trinh on 2021-09-02.
//

import Foundation


//ObservableObject & Published allows the variables to be shared accross the views
//Also add the shop class in the MAIN APP to use it

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
    
}
