//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Dustin Trinh on 2020-08-20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let ans: String
    
    init(q: String, a: String) {
        text = q
        ans = a
    }
}
