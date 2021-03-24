//
//  TennisGame.swift
//  CodeKata
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation

class TennisGame {

    var player1: Player
    var player2: Player
    
    init(player1: Player,
         player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }
    
    func getScore() -> String {
        if player1.score >= 3 && player2.score >= 3 {
            return ""
        } else {
            return player1.getPointText() + " " + player2.getPointText()
        }
    }
}
