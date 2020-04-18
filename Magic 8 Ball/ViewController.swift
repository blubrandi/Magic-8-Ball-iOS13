//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBallImageView: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    let ballArray = [#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAskButton()
    }
    
    func configureAskButton() {
        askButton.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        askButton.layer.cornerRadius = 5
    }
    
    
    @IBAction func askButtonTapped(_ sender: UIButton) {
        
        magicBallImageView.image = ballArray.randomElement()
    }
}

