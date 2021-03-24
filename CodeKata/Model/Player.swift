//
//  Person.swift
//  CodeKata
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation

class Player {
    let name: String
    public private(set) var score: Int
    
    init(name: String,
         score: Int) {
        self.name = name
        self.score = score
    }
    
    func serveAndWin() {
        score += 1
    }
}
