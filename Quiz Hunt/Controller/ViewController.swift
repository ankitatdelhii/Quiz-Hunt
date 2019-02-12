//
//  ViewController.swift
//  Quiz Hunt
//
//  Created by Ankit Saxena on 08/02/19.
//  Copyright © 2019 Ankit Saxena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quesLabel: UILabel! //Name of the question
    @IBOutlet weak var scoreLabel: UILabel! //score
    @IBOutlet weak var progressLabel: UILabel! // x/15
    @IBOutlet var progressWidth: NSLayoutConstraint!
    
    
    var questions = Ques()
    var quesIndex = 0
    var selectedAns : Bool = false
    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        selectedAns = sender.tag == 1 ? true : false
        checkAns(with: selectedAns)
    }
    
    func checkAns(with: Bool){
        if selectedAns == questions.allQues[quesIndex].ans{
            score = score + 1
            ProgressHUD.showSuccess()
        }
        else{
            ProgressHUD.showError()
        }
        quesIndex = quesIndex + 1
        updateUI()
    }
    
    func updateUI(){
        //Updating Progress Bar
        progressWidth.constant = view.frame.size.width/15 * CGFloat(quesIndex + 1)
        quesIndex == 15 ? restart() : nil
        quesLabel.text = questions.allQues[quesIndex].title
        progressLabel.text = "\(quesIndex+1)/15"
        scoreLabel.text = "Score: \(score*10)"
    }
    
    
    func restart(){
        quesIndex = 0; score = 0; updateUI()
        let alert = UIAlertController(title: "Do you want to Restart?", message: "Replay Again!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Restart!", style: .default) { (action) in
        }
        
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}

