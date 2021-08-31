//
//  VideoModel.swift
//  VideoModel
//
//  Created by Dustin Trinh on 2021-08-31.
//

import SwiftUI

struct Video: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String{
        "video-\(id)"
    }
}
