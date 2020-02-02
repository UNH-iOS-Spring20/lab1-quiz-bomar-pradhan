//
//  ViewController.swift
//  Quiz
//
//  Created by Bomar, Shawn L on 1/30/20.
//  Copyright © 2020 Bomar - Pradhan. All rights reserved.
//

import UIKit
import os //Get OS functions

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    
    let questions: [String] = [
        "What is Nepal's capital city?",
        "Is this a question?",
        "What's the name of the Lone Ranger's nephew's horse?"
    ]
    
    let answers: [String] = [
        "Kathmandu.",
        "Yes, it is.",
        "Victor."
    ]
    
    var currentQuestionIndex: Int = 0
    
    // PDF-41 for Reference
    @IBAction func showNextQuestion(_ sender: UIButton){
        os_log("Showing Next Question...")
        currentQuestionIndex+=1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        os_log("Showing the Answer...")
        //Mirror from Question segments
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    //Pre-connection, an empty circle replacing the line number signifies the need for connection to an object in the storyboard
    //Filed circle indicates a connection and is link-clickable
    override func viewDidLoad() {
        // Calls parent methods which act similarly to built-in Singleton Classes - Custom OS Modifiable
        super.viewDidLoad()
        os_log("Load Complete...")
        //customLog allows for defining packages in order to organize the log system for clarity later on.
        questionLabel.text = questions[currentQuestionIndex]
        //answerLabel.text = "Is Question"
    }

}

