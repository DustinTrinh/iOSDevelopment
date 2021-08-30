//
//  FruitDetailView.swift
//  FruitDetailView
//
//  Created by Dustin Trinh on 2021-08-28.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                //HEADER
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .center, spacing: 20){
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[0])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRITION
                        FruitNutritionView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//:VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//:VSTACK
                
                //Have to add this portion and the one below so the top padding isnt too large. #1
                 
                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
                
            }//:SCROLLVIEW
            //Occupy the safe Area!!
            .edgesIgnoringSafeArea(.top)
        }//:NAVIGATION
        //Have to add this portion so the padding at top #2
        .navigationTitle(fruit.title + " Details")
        .navigationBarTitleDisplayMode(.inline)
        //For ipad compatible views.
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
    
    //MARK: PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[2])
    }
}
