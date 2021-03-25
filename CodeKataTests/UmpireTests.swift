//
//  UmpireTests.swift
//  CodeKataTests
//
//  Created by Prabhakar G on 25/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation
import XCTest
@testable import CodeKata

class UmpireTests: XCTestCase {
    var subject: Umpire!
    
    override func setUp() {
        super.setUp()
        subject = Umpire()
    }
    
    func testIsAdvantage() {
        let acutalResult = subject.isAdvantage(4, 3)
        XCTAssertTrue(acutalResult)
    }
    
    func testIsDeuce() {
        let acutalResult = subject.isDeuce(4, 4)
        XCTAssertTrue(acutalResult)
    }
    
    func testHasWinner() {
        let acutalResult = subject.hasWinner(4, 2)
        XCTAssertTrue(acutalResult)
    }
    
    
    override func tearDown() {
        super.tearDown()
        subject = nil
    }
}
