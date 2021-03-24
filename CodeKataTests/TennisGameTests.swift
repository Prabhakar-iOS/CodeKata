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
    
    override func setUp() {
        super.setUp()
        subject = TennisGame()
    }
    
    func testPointsShouldBeLoveLoveWhenStartOfTheGame() {
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Love Love")
    }
    
    func testPointShouldBeFifteenLoveWhenPlayer1ScoredFirst() {
        subject.playerOneServedAndScored()
        let actualScore = subject.getScore()
        XCTAssertEqual(actualScore, "Fifteen Love")
    }
    
    func testPointShouldBeThirtyLoveWhenPlayer1ScoredSecondTime() {
        subject.playerOneServedAndScored()
        subject.playerOneServedAndScored()
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
}
