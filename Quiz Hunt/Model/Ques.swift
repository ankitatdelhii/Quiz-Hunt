//
//  Ques.swift
//  Quiz Hunt
//
//  Created by Ankit Saxena on 12/02/19.
//  Copyright © 2019 Ankit Saxena. All rights reserved.
//

import Foundation

class Ques {
    var allQues = [QuesBank]()
    
    init() {
        let ques1 = QuesBank(title: "The Headquarters of the Southern Naval Command of the India Navy is located at Thiruvananthapuram.", ans: false)
        allQues.append(ques1)
        
        allQues.append(QuesBank(title: "Amartya Sen was awarded the Nobel prize for his contribution to Welfare Economics.", ans: true))
        
        allQues.append(QuesBank(title: "William Hewlett and David Packard set up a small company called apple.", ans: false))
        
        allQues.append(QuesBank(title: "Earth Rotation is also called annual motion of the earth?", ans: false))
        
        allQues.append(QuesBank(title: "Sachin Tendulkar has not played a single International T20 match for India.", ans: false))
        
        allQues.append(QuesBank(title: "There are 4 sessions of the Parliament each year: Spring, Summer, Autumn and Winter.", ans: false))
        
        allQues.append(QuesBank(title: "The Captain Roop Singh stadium is named after a former Indian cricketer.", ans: false))
        
        allQues.append(QuesBank(title: "The Mahabharata is a part of The Bhagavad Gita.", ans: false))
        
        allQues.append(QuesBank(title: "The National Security Guards are also known as Black Cat Commandos due to their uniforms.", ans: true))
        
        allQues.append(QuesBank(title: "The Census in India occur after every 8 years.", ans: false))
        
        allQues.append(QuesBank(title: "The Indian Penal Code came into operation on 1st January, 1862.", ans: true))
        
        allQues.append(QuesBank(title: "The Rajya Sabha can have a maximum of 552 members.", ans: false))
        
        allQues.append(QuesBank(title: "Kuala Lumpur hosted the Commonwealth Game in 2010?", ans: false))
        
        allQues.append(QuesBank(title: "India player the 2015 Cricket World Cup final?", ans: false))
        
        allQues.append(QuesBank(title: "Piyush Goyal presented the budget in 2019?", ans: true))
    }
}
