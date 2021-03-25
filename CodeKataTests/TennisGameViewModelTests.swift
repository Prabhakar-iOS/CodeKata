//
//  TennisGameViewModelTests.swift
//  CodeKataTests
//
//  Created by Prabhakar G on 24/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import XCTest
@testable import CodeKata

class TennisGameViewModelTests: XCTestCase {
    var subject: TennisGameViewable!
    
    var player1: Player!
    var player2: Player!
    
    override func setUp() {
        super.setUp()
        player1 = Player(name: "Player one", score: 0)
        player2 = Player(name: "Player two", score: 0)
        let umpire = Umpire()
        subject = TennisGameViewModel(player1: player1, player2: player2, umpire: umpire)
    }
    
    func testPointsShouldBeLoveLoveWhenStartOfTheGame() {
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Player one score: Love\nPlayer two score: Love")
    }
    
    func testPointShouldBeFifteenLoveWhenPlayer1ScoredFirst() {
        player1.winsTheBall()
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Player one score: Fifteen\nPlayer two score: Love")
    }
    
    func testPointShouldBeThirtyLoveWhenPlayer1ScoredSecondTime() {
        player1.winsTheBall()
        player1.winsTheBall()
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Player one score: Thirty\nPlayer two score: Love")
    }
    
    func testPointShouldBeFortyThirtyWhenPlayer1ScoredThirdTimeContinuosly() {
        player1.winsTheBall()
        player1.winsTheBall()
        player1.winsTheBall()
        player2.winsTheBall()
        player2.winsTheBall()
        
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Player one score: Forty\nPlayer two score: Thirty")
    }
    
    func testGameShouldBeWonByPlayer1WhenPlayer1ScoredFourTotalWithTwoPointsMoreThanPlayer2() {
        player1.winsTheBall()
        player1.winsTheBall()
        player1.winsTheBall()
        player1.winsTheBall()
        player2.winsTheBall()
        
        let acutalScore = subject.getScore()
        XCTAssertEqual(acutalScore, "Player one won")
    }
    
    func testPointShoudBeAdvantageWhenBothPlayersScoreLeastThreeTimesAndPlayers1HasPointMoreThanPlayer2() {
        player1.winsTheBall()
        player1.winsTheBall()
        player1.winsTheBall()
        player1.winsTheBall()
        player2.winsTheBall()
        player2.winsTheBall()
        player2.winsTheBall()
        
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Player one has advantage")
    }
    
    func testPointsShouldBeDeuceWhenBothPlayersScoresLeastThreeTimesAndPlayersPointsAreEqual() {
        player1.winsTheBall()
        player1.winsTheBall()
        player1.winsTheBall()
        player2.winsTheBall()
        player2.winsTheBall()
        player2.winsTheBall()
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Game is deuce")
    }
    
    override func tearDown() {
        super.tearDown()
        subject = nil
        player2 = nil
        player1 = nil
    }
}
