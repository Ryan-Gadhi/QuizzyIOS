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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

