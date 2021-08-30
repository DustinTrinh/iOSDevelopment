//
//  FruitNutritionView.swift
//  FruitNutritionView
//
//  Created by Dustin Trinh on 2021-08-29.
//

import SwiftUI

struct FruitNutritionView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    let nutrient: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional Value per 100g"){
                
                
                ForEach(0..<nutrient.count, id:\.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//:Groupbox
        
    }
}

    //MARK: PREVIEW
struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitsData[2])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
