//
//  SettingsLabelView.swift
//  SettingsLabelView
//
//  Created by Dustin Trinh on 2021-08-29.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: PROPERTIES
    var labelText: String
    var labelImage: String
    //MARK: BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle").padding()
    }
}
