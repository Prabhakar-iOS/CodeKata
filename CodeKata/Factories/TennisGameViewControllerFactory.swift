//
//  TennisGameViewControllerFactory.swift
//  CodeKata
//
//  Created by Prabhakar G on 25/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation
import UIKit

class TennisGameViewControllerFactory {
    
    func makeTennisGameViewController() -> UIViewController {
        let playerOne = Player(name: "Player One", score: 0)
        let playerTwo = Player(name: "Player Two", score: 0)
        let umpire = Umpire()

        let tennisGame = TennisGameViewModel(player1: playerOne,
                                    player2: playerTwo,
                                    umpire: umpire)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "TennisGameViewController") { (coder) -> UIViewController? in
            return TennisGameViewController(coder: coder, viewModel: tennisGame)
        }
        return viewController
    }
}
