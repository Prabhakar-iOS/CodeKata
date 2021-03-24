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
    var umpire: Umpire
    
    init(player1: Player,
         player2: Player,
         umpire: Umpire) {
        self.player1 = player1
        self.player2 = player2
        self.umpire = umpire
    }
    
    func getScore() -> String {
        if umpire.hasWinner(player1.score, player2.score) {
            return getLeadScorePlayer().name + " won"
        } else {
            return player1.getPointText() + " " + player2.getPointText()
        }
    }
    
    private func playerWithHighestScore() -> String {
        if player1.score > player2.score {
            return player1.name
        } else {
            return player2.name
        }
    }
    
    func getLeadScorePlayer() -> Player {
        return player1.score > player2.score ? player1 : player2
    }
}
