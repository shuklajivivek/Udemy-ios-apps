//
//  ViewController.swift
//  magic 8 ball
//
//  Created by vivek shukla on 17/01/20.
//  Copyright © 2020 wooqer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
      
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber = 0
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       updateImageView()
    }
    
    func updateImageView()
    {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
       
        updateImageView()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImageView()
    }
}

