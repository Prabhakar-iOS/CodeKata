//
//  Umpire.swift
//  CodeKata
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation

class Umpire {
    
    
    func hasWinner(_ playerOneScore: Int, _ playerTwoScore: Int) -> Bool {
        if playerTwoScore >= 4 && playerTwoScore >= playerOneScore + 2 {
            return true
        }
        if playerOneScore >= 4 && playerOneScore >= playerTwoScore + 2 {
            return true
        }
        return false
    }
}
