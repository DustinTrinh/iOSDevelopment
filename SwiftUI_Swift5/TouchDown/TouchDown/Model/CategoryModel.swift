//
//  CategoryModel.swift
//  CategoryModel
//
//  Created by Dustin Trinh on 2021-09-02.
//

import SwiftUI

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
