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
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        os_log("Showing Next Question...")
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        os_log("Showing the Answer...")
    }
    
    //Pre-connection, an empty circle replacing the line number signifies the need for connection to an object in the storyboard
    //Filed circle indicates a connection and is link-clickable
    override func viewDidLoad() {
        // Calls parent methods which act similarly to built-in Singleton Classes - Custom OS Modifiable
        super.viewDidLoad()
        os_log("Load Complete...")
        //customLog allows for defining packages in order to organize the log system for clarity later on.
        //questionLabel.text = "Is Question"
        //answerLabel.text = "Is Question"
    }

}

