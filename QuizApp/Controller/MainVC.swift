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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func answerBtnPressed(_ sender: Any) {
    }
    
}
