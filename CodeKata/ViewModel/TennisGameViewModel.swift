//
//  TennisGameViewModel.swift
//  CodeKata
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation

protocol TennisGameViewable {
    func getScore() -> String
    func serveTheBall(_ completion: @escaping (String) -> ())
    func initialScore() -> String
}

class TennisGameViewModel: TennisGameViewable {
    
    private var player1: Player
    private var player2: Player
    private var umpire: Umpire
    private var isGameOver = false
    
    public init(player1: Player,
                player2: Player,
                umpire: Umpire) {
        self.player1 = player1
        self.player2 = player2
        self.umpire = umpire
    }
    
    public func getScore() -> String {
        if umpire.hasWinner(player1.score, player2.score) {
            isGameOver = true
            return getLeadScorePlayer().name + " won"
        } else if umpire.isAdvantage(player1.score, player2.score) {
            return getLeadScorePlayer().name + " has advantage"
        } else if umpire.isDeuce(player1.score, player2.score) {
            return "Game is deuce"
        } else {
            return "\(player1.name) score: \(player1.getPointText())" + "\n"
                 + "\(player2.name) score: \(player2.getPointText())"
        }
    }
    
    public func serveTheBall(_ completion: @escaping (String) -> ()) {
        if isGameOver {
            resetTheGame()
            completion(initialScore())
        } else {
            let players = [player1, player2]
            players.randomElement()?.winsTheBall()
            completion(getScore())
        }
    }
    
    private func resetTheGame() {
        player1.reset()
        player2.reset()
        isGameOver = false
    }
    
    private func getLeadScorePlayer() -> Player {
        return player1.score > player2.score ? player1 : player2
    }
    
    public func initialScore() -> String {
        return "Player one score: Love \nPlayer two score: Love"
    }
}
