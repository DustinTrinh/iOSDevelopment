//
//  Constant.swift
//  Constant
//
//  Created by Dustin Trinh on 2021-09-01.
//

import SwiftUI

//PLAYER
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[1]


//COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing) , count: 2)
}

//CONST STRING
let footerNote: String = "We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable price."
let copyrightNote: String = "Copyright © Dustin Trinh\nAll right reserved"
let category: String = "Categories"
let productTitle: String = "Helmets"
let brandTitle: String = "Brands"
let addToCart: String = "Add To Cart"
let sizes: [String] = ["XS", "S", "M", "L", "XL"]

//UX

let feedback = UIImpactFeedbackGenerator(style: .medium)
