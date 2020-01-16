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
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    @IBAction func RollButtonPressed(_ sender: UIButton) {
     
        randomNumberIndex1 = Int(arc4random_uniform(6))
        randomNumberIndex2 = Int(arc4random_uniform(6))
    
    }
    

}

