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
    
    private let pointsTextList = ["Love", "Fifteen", "Thirty", "Fifteen"]
    
    init(name: String,
         score: Int) {
        self.name = name
        self.score = score
    }
    
    func serveAndWin() {
        score += 1
    }
    
    func getPointText() -> String {
        return pointsTextList[score]
    }
}
