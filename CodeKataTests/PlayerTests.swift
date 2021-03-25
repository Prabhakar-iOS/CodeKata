//
//  PlayerTests.swift
//  CodeKataTests
//
//  Created by Prabhakar G on 25/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation
import XCTest
@testable import CodeKata

class PlayerTests: XCTestCase {
    var subject: Player!
    
    override func setUp() {
        super.setUp()
        subject = Player(name: "Mani", score: 0)
    }
    
    func testScoreWhenWinsTheBallMethodCalled() {
        subject.winsTheBall()
        XCTAssertEqual(subject.score, 1)
    }
    
    func testPointsPerText() {
        XCTAssertEqual(subject.getPointText(), "Love")
        subject.winsTheBall()
        XCTAssertEqual(subject.getPointText(), "Fifteen")
        subject.winsTheBall()
        XCTAssertEqual(subject.getPointText(), "Thirty")
        subject.winsTheBall()
        XCTAssertEqual(subject.getPointText(), "Forty")
    }
    
    func testReset() {
        subject.winsTheBall()
        subject.winsTheBall()
        XCTAssertEqual(subject.getPointText(), "Thirty")
        subject.reset()
        XCTAssertEqual(subject.getPointText(), "Love")
    }
    
    override func tearDown() {
        super.tearDown()
        subject = nil
    }
}
