//
//  ViewController.swift
//  dicee
//
//  Created by Treinamento on 8/13/19.
//  Copyright © 2019 In.kpro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndexLeft: Int = 0
    var randomDiceIndexRight: Int = 0
    @IBOutlet weak var leftdice: UIImageView!
    @IBOutlet weak var rightdice: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonroll(_ sender: UIButton) {
        updateDiceImages()
    }
    func updateDiceImages (){
        randomDiceIndexLeft = Int.random(in: 0 ... 5)
        randomDiceIndexRight = Int.random(in: 0 ... 5)
        
        leftdice.image = UIImage(named:diceArray[randomDiceIndexLeft])
        rightdice.image = UIImage(named:diceArray[randomDiceIndexRight])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
        
    }
}

