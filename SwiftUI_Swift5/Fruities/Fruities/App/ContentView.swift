//
//  ContentView.swift
//  Fruities
//
//  Created by Dustin Trinh on 2021-08-23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSetting: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) {item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{
                        isShowingSetting = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }//: BUTTON
                    .sheet(isPresented: $isShowingSetting){
                        SettingView()
                    }
                }
            }//: TOOBAR
        }//:Navigation
        //For ipad compatible views.
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

    //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
