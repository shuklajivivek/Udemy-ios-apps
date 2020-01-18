//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions  =  QuestionBank()
    var pickedAnswer : Bool = false
    var currentQuestion = 0
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1
        {
            pickedAnswer = true
        }
        else
        {
            pickedAnswer = false
        }
        checkAnswer()
        currentQuestion += 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text    = "Score: \(score)"
        progressLabel.text = "\(currentQuestion + 1)/13 "
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(currentQuestion + 1)
    }
    

    func nextQuestion() {
        
        if currentQuestion < allQuestions.list.count
        {
        questionLabel.text = allQuestions.list[currentQuestion].questionText
            updateUI()
        }
        else
        {
            let alert = UIAlertController(title: "Well Done!", message: "you have completed", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert,animated: true,completion: nil)
        }
    }
    
    
    func checkAnswer() {
        
        let Answer = allQuestions.list[currentQuestion].questionAnswer
        if Answer == pickedAnswer
        {
            score += 1
           // ProgressHUD.showSuccess("Correct!")
        }
        else
        {
            //print("you are wrong!")
            //ProgressHUD.showError("Wrong")
        }
    }
    
    
    func startOver() {
    
        currentQuestion = 0
        score = 0
        nextQuestion()
    }
    

    
}
