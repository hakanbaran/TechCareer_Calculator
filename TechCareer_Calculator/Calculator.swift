//
//  ViewController.swift
//  TechCareer_Calculator
//
//  Created by Hakan Baran on 23.09.2023.
//

import UIKit

class Calculator: UIViewController {
    
    @IBOutlet weak var calculationLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var subButton: UIButton!
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var pointButton: UIButton!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    
    
    
    var buttonList = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        buttonList.append(acButton)
        buttonList.append(deleteButton)
        buttonList.append(divideButton)
        buttonList.append(multiply)
        buttonList.append(subButton)
        buttonList.append(sumButton)
        buttonList.append(equalButton)
        buttonList.append(pointButton)
        
        buttonList.append(zeroButton)
        buttonList.append(oneButton)
        buttonList.append(twoButton)
        buttonList.append(threeButton)
        buttonList.append(fourButton)
        buttonList.append(fiveButton)
        buttonList.append(sixButton)
        buttonList.append(sevenButton)
        buttonList.append(eightButton)
        buttonList.append(nineButton)
        
        configureButton()
        
    }
    
    func configureButton() {
        for button in buttonList {
                    button.layer.cornerRadius = 10
                    button.layer.shadowColor = UIColor.black.cgColor
                    button.layer.shadowOffset = CGSize(width: 0, height: 2)
                    button.layer.shadowRadius = 3
                    button.layer.shadowOpacity = 0.5
                }
    }
    
    
    
    
    
    
}

