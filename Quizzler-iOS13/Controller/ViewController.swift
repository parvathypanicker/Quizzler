//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
   var questionBank = QuestionBank()
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
       
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        var result = questionBank.checkAnswer(userAnswer)
        
        if result {
           sender.backgroundColor = UIColor.green
        } else {
             sender.backgroundColor = UIColor.red
        }
        
        questionBank.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(ViewController.updateUI), userInfo: nil, repeats: true)
//          updateUI()
    }
    
    @objc func updateUI() {
        questionLabel.text = questionBank.getQuestionText()
        progressBar.progress = questionBank.getProgress()
        scoreLabel.text = "Score: \(questionBank.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
}

