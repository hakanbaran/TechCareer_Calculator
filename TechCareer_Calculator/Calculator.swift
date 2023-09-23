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
        
        configureNumberAction()
        
        configureSembolAction()
        
        configureActions()
        
        
        
    }
    
    func configureCalculatorLabel() {
        
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
    
    func configureNumberAction() {
        
        zeroButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 0)
        }), for: .touchUpInside)
        
        oneButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 1)
        }), for: .touchUpInside)
        
        twoButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 2)
        }), for: .touchUpInside)
        threeButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 3)
        }), for: .touchUpInside)
        fourButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 4)
        }), for: .touchUpInside)
        
        fiveButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 5)
        }), for: .touchUpInside)
        
        sixButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 6)
        }), for: .touchUpInside)
        
        sevenButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 7)
        }), for: .touchUpInside)
        
        eightButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 8)
        }), for: .touchUpInside)
        
        nineButton.addAction(UIAction(handler: { _ in
            self.calculatorNumber(number: 9)
        }), for: .touchUpInside)
    }
    
    
    func calculatorNumber(number: Int) {
        
        guard let calculator = self.calculationLabel.text else {
            return
        }
        
        if calculator.count > 22 {
            print("FAZLAAAAA")
        } else {
            if calculationLabel.text == "0" {
                self.calculationLabel.text = "\(number)"
            } else {
                self.calculationLabel.text = calculator + "\(number)"
            }
        }
    }
    
    func configureSembolAction(sembol: String) {
        guard let calculator = self.calculationLabel.text else {
            return
        }
        if calculator.count >= 1 {
            let lastIndex = calculator.index(calculator.endIndex, offsetBy: -1)
            let secondToLastCharacter = calculator[lastIndex]
            
            if secondToLastCharacter == "/" ||
                secondToLastCharacter == "*" ||
                secondToLastCharacter == "+" ||
                secondToLastCharacter == "-" ||
                secondToLastCharacter == "." ||
                calculator == "0" {
            } else {
                self.calculationLabel.text = calculator + sembol
            }
        } else {
            self.calculationLabel.text = calculator + sembol
        }
    }
    
    
    func configureSembolAction() {
        
        divideButton.addAction(UIAction(handler: { _ in
            self.configureSembolAction(sembol: "/")
        }), for: .touchUpInside)
        
        multiply.addAction(UIAction(handler: { _ in
            self.configureSembolAction(sembol: "*")
        }), for: .touchUpInside)
        
        subButton.addAction(UIAction(handler: { _ in
            self.configureSembolAction(sembol: "-")
        }), for: .touchUpInside)
        
        sumButton.addAction(UIAction(handler: { _ in
            self.configureSembolAction(sembol: "+")
        }), for: .touchUpInside)
        
        pointButton.addAction(UIAction(handler: { _ in
            self.configureSembolAction(sembol: ".")
        }), for: .touchUpInside)
        
        
    }
    
    func configureActions() {
        acButton.addAction(UIAction(handler: { _ in
            self.resultLabel.text = "= 0"
            self.calculationLabel.text = "0"
        }), for: .touchUpInside)
        
        deleteButton.addAction(UIAction(handler: { _ in
            
            guard var calculator = self.calculationLabel.text else {
                return
            }
            
            if !calculator.isEmpty {
                calculator = String(calculator.dropLast())
                
                if calculator.count == 0 {
                    self.calculationLabel.text = "0"
                } else {
                    self.calculationLabel.text = calculator
                }
            }
        }), for: .touchUpInside)
        
        
        
        equalButton.addAction(UIAction(handler: { _ in
            
            guard let calculator = self.calculationLabel.text else {
                return
            }
            if calculator.count >= 1 {
                let lastIndex = calculator.index(calculator.endIndex, offsetBy: -1)
                let secondToLastCharacter = calculator[lastIndex]
                
                if secondToLastCharacter == "/" ||
                    secondToLastCharacter == "*" ||
                    secondToLastCharacter == "+" ||
                    secondToLastCharacter == "-" ||
                    secondToLastCharacter == "." ||
                    calculator == "0" {
                } else {
                    self.calculator()
                    
                }
            }
            
            
            
            
            
            
            
        }), for: .touchUpInside)
        
    }
    
    func calculator() {
        
        guard let calculator = self.calculationLabel.text else {
            return
        }
        let regex = try! NSRegularExpression(pattern: "\\d+")
        let matches = regex.matches(in: calculator, range: NSRange(calculator.startIndex..., in: calculator))

        var numbers = [Int]()
        var operations = [Character]()

        for match in matches {
            if let range = Range(match.range, in: calculator), let number = Int(calculator[range]) {
                numbers.append(number)
            }
        }

        for character in calculator {
            if "+-*/".contains(character) {
                operations.append(character)
            }
        }

        var result = numbers[0]

        for i in 0..<operations.count {
            let operation = operations[i]
            let number = numbers[i + 1]
            
            switch operation {
            case "+":
                result += number
            case "-":
                result -= number
            case "*":
                result *= number
            case "/":
                if number != 0 {
                    result /= number
                } else {
                    print("Bölme sıfıra bölünemez!")
                    break
                }
            default:
                break
            }
        }
        resultLabel.text = String(result)
    }
}

