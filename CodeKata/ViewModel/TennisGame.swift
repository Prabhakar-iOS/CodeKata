//
//  TennisGame.swift
//  CodeKata
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation

struct TennisGame {
    var player1Score = 0
    var player2Score = 0
    
    func getScore() -> String {
        if player1Score == 0 && player2Score == 0 {
             return "Love Love"
        } else if player1Score == 1 && player2Score == 0 {
            return "Fifteen Love"
        } else if player1Score == 2 && player2Score == 0 {
            return "Thirty Love"
        } 
       return ""
    }
    
    mutating func playerOneServedAndScored() {
        player1Score += 1
    }
    
    mutating func playerTwoServedAndScored() {
        player2Score += 1
    }
}
