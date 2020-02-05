//
//  ViewController.swift
//  QuizApp
//
//  Created by Project X on 2/4/20.
//  Copyright © 2020 ryangadhi.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var trueButton: UIButton!

    @IBOutlet weak var falseButton: UIButton!

    var brain = Brain() // the brain struct in the Model folder
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // adding a new look for the buttons
        adjustButtons()
        updateLogicAndUI(userAnswer:"hello bad desing")
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        let userChoice = sender.currentTitle! // forcing unwrapp
        updateLogicAndUI(userAnswer: userChoice)
        
        print(userChoice)
        
    }
    
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    
    func updateLogicAndUI(userAnswer:String){
        
        QuestionLabel.text = brain.getNextQuestion()
        ScoreLabel.text = String(brain.getUpdatedScore(userAnswer: userAnswer))
        
    }
    
    
    func adjustButtons(){
        trueButton.layer.borderWidth = 3
        falseButton.layer.borderWidth = 3
        trueButton.layer.cornerRadius = 10
        falseButton.layer.cornerRadius = 10
        trueButton.backgroundColor =  hexStringToUIColor(hex: "#d3d3d3")
        falseButton.backgroundColor =  hexStringToUIColor(hex: "#d3d3d3")
    }
       // this function takes a hex value and
    // returns a UI color
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

