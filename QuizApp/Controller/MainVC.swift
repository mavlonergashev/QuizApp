//
//  MainVC.swift
//  QuizApp
//
//  Created by Mavlon on 09/04/22.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    @IBOutlet weak var choice3Btn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotCorrect = quizBrain.checkAnswer(userAnswer: userAnswer)
        if userGotCorrect {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        scoreLbl.text = "Score: \(quizBrain.getScore())"
        questionLbl.text = quizBrain.getQuestion()
        let answers = quizBrain.getAnswers()
        choice1Btn.setTitle("\(answers[0])", for: .normal)
        choice2Btn.setTitle("\(answers[1])", for: .normal)
        choice3Btn.setTitle("\(answers[2])", for: .normal)
        progressBar.progress = quizBrain.getProgress()
        choice1Btn.backgroundColor = .clear
        choice2Btn.backgroundColor = .clear
        choice3Btn.backgroundColor = .clear
    }
    
}
