//
//  TennisGameViewController.swift
//  CodeKata
//
//  Created by Prabhakar G on 25/03/21.
//  Copyright © 2021 Prabhakar. All rights reserved.
//

import Foundation
import UIKit

class TennisGameViewController: UIViewController {
    
    var viewModel: TennisGameViewable
    
    @IBOutlet weak var resultLabel: UILabel!
    
    init?(coder: NSCoder, viewModel: TennisGameViewable) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tennis Game"
        resultLabel.text = viewModel.initialScore()
    }

    @IBAction func serveButtonTapped(_ sender: Any) {
        viewModel.serveTheBall { [unowned self] result in
            self.resultLabel.text = result
        }
    }
}
