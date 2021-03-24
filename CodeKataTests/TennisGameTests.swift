//
//  TennisGameTests.swift
//  CodeKataTests
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import XCTest
@testable import CodeKata

class TennisGameTests: XCTestCase {
    var subject: TennisGame!
    
    var player1: Player!
    var player2: Player!
    
    override func setUp() {
        super.setUp()
        player1 = Player(name: "Player one", score: 0)
        player2 = Player(name: "Player two", score: 0)
        subject = TennisGame(player1: player1, player2: player2)
    }
    
    func testPointsShouldBeLoveLoveWhenStartOfTheGame() {
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Love Love")
    }
    
    func testPointShouldBeFifteenLoveWhenPlayer1ScoredFirst() {
        player1.serveAndWin()
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Fifteen Love")
    }
    
    func testPointShouldBeThirtyLoveWhenPlayer1ScoredSecondTime() {
        player1.serveAndWin()
        player1.serveAndWin()
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Thirty Love")
    }
    
    func testPointShouldBeFortyLoveWhenPlayer1ScoredThirdTimeContinuosly() {
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Forty Love")
    }
    
    func testPointShoudBeAdvantageWhenBothPlayersScoreLeastThreeTimesAndPlayers1HasPointMoreThanPlayer2() {
        
    }
    
    func testPointsShouldBeDeuceWhenBothPlayersScoresLeastThreeTimesAndPlayersPointsAreEqual() {
        
    }
    
    func testGameShouldBeWonByPlayer1WhenPlayer1ScoredFourTotalWithTwoPointsMoreThanPlayer2() {
        
    }
    
    override func tearDown() {
        super.tearDown()
        subject = nil
        player2 = nil
        player1 = nil
    }
}
