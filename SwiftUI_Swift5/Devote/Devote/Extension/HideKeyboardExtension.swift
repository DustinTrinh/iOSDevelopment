//
//  HideKeyboardExtension.swift
//  HideKeyboardExtension
//
//  Created by Dustin Trinh on 2021-09-04.
//

import SwiftUI

#if canImport(UIKit)
extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
