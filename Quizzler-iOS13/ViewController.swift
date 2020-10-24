//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quiz : [Question] = [
        Question(text: "Is Archie a good boy?", answer: "True"),
        Question(text: "Is Jaxon called Ms. Muffet", answer: "True"),
        Question(text: "Is Janet the boss of the puppies?", answer: "False")
    ]
    
    var questionNumber : Int = 0
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionView: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @objc func resetButtonsBackground() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    
    func updateUI(number: Int) {
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(resetButtonsBackground), userInfo: nil, repeats: false)
        
        questionView.text = quiz[number].text
        ProgressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(number: questionNumber)
    }

    
    @IBAction func answerSelected(_ sender: UIButton) {
        
        let userAnswer : String = sender.currentTitle!
        
        let questionAnswer : String = quiz[questionNumber].answer
        
        if userAnswer == questionAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 != quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        updateUI(number: questionNumber)
    }
    
    
    
    
}

