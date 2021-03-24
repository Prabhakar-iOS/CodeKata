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
        let umpire = Umpire()
        subject = TennisGame(player1: player1, player2: player2, umpire: umpire)
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
    
    func testPointShouldBeFortyThirtyWhenPlayer1ScoredThirdTimeContinuosly() {
        player1.serveAndWin()
        player1.serveAndWin()
        player1.serveAndWin()
        player2.serveAndWin()
        player2.serveAndWin()
        
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Forty Thirty")
    }
    
    func testGameShouldBeWonByPlayer1WhenPlayer1ScoredFourTotalWithTwoPointsMoreThanPlayer2() {
        player1.serveAndWin()
        player1.serveAndWin()
        player1.serveAndWin()
        player1.serveAndWin()
        player2.serveAndWin()
        
        let acutalScore = subject.getScore()
        XCTAssertEqual(acutalScore, "Player one won")
    }
    
    func testPointShoudBeAdvantageWhenBothPlayersScoreLeastThreeTimesAndPlayers1HasPointMoreThanPlayer2() {
        player1.serveAndWin()
        player1.serveAndWin()
        player1.serveAndWin()
        player1.serveAndWin()
        player2.serveAndWin()
        player2.serveAndWin()
        player2.serveAndWin()
        
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Player one has advantage")
    }
    
    func testPointsShouldBeDeuceWhenBothPlayersScoresLeastThreeTimesAndPlayersPointsAreEqual() {
        
    }
    
    override func tearDown() {
        super.tearDown()
        subject = nil
        player2 = nil
        player1 = nil
    }
}
