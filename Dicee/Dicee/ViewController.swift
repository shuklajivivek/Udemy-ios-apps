//
//  ViewController.swift
//  Dicee
//
//  Created by vivek shukla on 16/01/20.
//  Copyright © 2020 wooqer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomNumberIndex1 : Int = 0;
    var randomNumberIndex2 : Int = 0;
    
    let dicearray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }
  
    @IBAction func RollButtonPressed(_ sender: UIButton) {
     
        updateDiceImages()
    
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages() {
        randomNumberIndex1 = Int(arc4random_uniform(6))
        randomNumberIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: dicearray[randomNumberIndex1])
        diceImageView2.image = UIImage(named: dicearray[randomNumberIndex2])
        
    }
}

