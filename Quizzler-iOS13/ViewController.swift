//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quiz : [[String]] = [
        ["Is Archie A good Boy?", "True"],
        ["Is Jacxon also called Ms. Muffet?", "True"],
        ["Is Janet the boss of the puppies?", "False"]
    ]
    
    var questionNumber : Int = 0
    
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionView: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    func updateUI(number: Int) {
        questionView.text = quiz[number][0]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(number: questionNumber)
    }

    
    @IBAction func answerSelected(_ sender: UIButton) {
        
        let userAnswer : String = sender.currentTitle!
        
        let questionAnswer : String = quiz[questionNumber][1]
        
        if userAnswer == questionAnswer {
            print("puppies")
        } else {
            print("cats")
        }
        questionNumber += 1
        
        updateUI(number: questionNumber)
    }
    
    
    
    
}

