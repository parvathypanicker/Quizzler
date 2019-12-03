//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Rahul Nath on 3/12/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let questionText : String
    let answer   : String
    
    init(q: String, a : String) {
        questionText = q
        answer = a
    }
}
