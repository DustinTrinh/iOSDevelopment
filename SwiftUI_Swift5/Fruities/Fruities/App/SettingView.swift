//
//  SettingView.swift
//  SettingView
//
//  Created by Dustin Trinh on 2021-08-29.
//

import SwiftUI

struct SettingView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    
                    GroupBox(label:
                    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("This is the Settings section of Fructus Application.").font(.footnote)
                        }
                    }//: GROUPBOX
                    
                    //MARK: - SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("Reset the application by toggle the switch. By doing that, you can see the Welcome Screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }//:GROUPBOX
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                            
                            SettingsRowView(name: "Device Name", content: UIDevice.current.name)
                            SettingsRowView(name: "Developer", content: "DustyTheCutie")
                            SettingsRowView(name: "System Name", content: UIDevice.current.systemName)
                            SettingsRowView(name: "System Version", content: UIDevice.current.systemVersion)
                            SettingsRowView(name: "Website", linkLabel: "Google", linkDestination: "google.ca")
                            
                        }//: GROUPBOX
                    
                }//:VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .padding()
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action:{
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                    }
                }//: TOOBAR
            }//: SCROLLVIEW
        }//: NAVIGATIONVIEW
    }
}

    //MARK: PREVIEW
struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
