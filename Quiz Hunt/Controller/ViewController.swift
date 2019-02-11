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
    @IBOutlet weak var bar: UIView!
    @IBOutlet weak var scoreLabel: UILabel! //score
    @IBOutlet weak var progressLabel: UILabel! // x/15
    
    var questions = Ques()
    var quesIndex = 0
    var selectedAns : Bool = false
    var score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print(sender.tag)
        selectedAns = sender.tag == 1 ? true : false
        checkAns(with: selectedAns)
    }
    
    func checkAns(with: Bool){
        if selectedAns == questions.allQues[quesIndex].ans{
            score = score + 1
            print("Correct")
        }
        else{
            print("Wrong")
        }
        quesIndex = quesIndex + 1
        updateUI()
    }
    
    func updateUI(){
        print(quesIndex)
        if quesIndex == 15{
            restart()
            print("Evking Ex")
        }
        quesLabel.text = questions.allQues[quesIndex].title
        progressLabel.text = "\(quesIndex+1)/15"
        scoreLabel.text = "Score: \(score*10)"
    }
    
    func restart(){
        quesIndex = 0
        score = 0
        updateUI()
        let alert = UIAlertController(title: "Do you want to Restart?", message: "Replay Again!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Restart!", style: .default) { (action) in
        }
        
        alert.addAction(action)
        self.present(alert, animated: true)
    }
}

