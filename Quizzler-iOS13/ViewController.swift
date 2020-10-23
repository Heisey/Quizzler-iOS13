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
    
    func updateUI(number: Int) {
        questionView.text = quiz[number].text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(number: questionNumber)
    }

    
    @IBAction func answerSelected(_ sender: UIButton) {
        
        let userAnswer : String = sender.currentTitle!
        
        let questionAnswer : String = quiz[questionNumber].answer
        
        if userAnswer == questionAnswer {
            print("puppies")
        } else {
            print("cats")
        }
        
        if questionNumber + 1 != quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 9
        }
        
        updateUI(number: questionNumber)
    }
    
    
    
    
}

