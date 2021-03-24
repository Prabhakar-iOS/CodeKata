//
//  Umpire.swift
//  CodeKata
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation

class Umpire {
    func isAdvantage(_ player1Score: Int, _ player2Score: Int) -> Bool {
        if player1Score >= 4 && player2Score == player1Score + 1 {
            return true
        }
        if player1Score >= 4 && player1Score == player2Score + 1 {
            return true
        }
        return false
    }
    
    func isDeuce(_ player1Score: Int, _ player2Score: Int) -> Bool {
        return player1Score >= 3 && player2Score == player1Score
    }
    
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
