//
//  ViewController.swift
//  Simple Calculator
//
//  Created by BERKAY TURAN on 18.07.2025.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0.0
    var isTypingFirstNumber = true
    var isTypingSecondNumber = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstText.isUserInteractionEnabled = true
        secondText.isUserInteractionEnabled = true
        
        // Klavyeyi engelle
        firstText.inputView = UIView()
        secondText.inputView = UIView()
        
        // Delegate ayarları
        firstText.delegate = self
        secondText.delegate = self
    }

    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
        
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func productClicked(_ sender: Any) {
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func square(_ sender: Any) {
        if let firstNumber = Double(firstText.text!) {
            if let secondTextValue = secondText.text, let secondNumber = Double(secondTextValue) {
                result = pow(firstNumber, secondNumber)
                resultLabel.text = String(result)
            } else {
                result = pow(firstNumber, 2)
                resultLabel.text = String(result)
            }
        }
    }

    @IBAction func cube(_ sender: Any) {
        if let firstNumber = Double(firstText.text!) {
            if let secondTextValue = secondText.text, let secondNumber = Double(secondTextValue) {
                result = pow(firstNumber, secondNumber)
                resultLabel.text = String(result)
            } else {
                result = pow(firstNumber, 3)
                resultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func squareRoot(_ sender: Any) {
        if let firstNumber = Double(firstText.text!) {
            if let secondTextValue = secondText.text, let secondNumber = Double(secondTextValue) {
                result = pow(firstNumber, secondNumber)
                resultLabel.text = String(result)
            } else {
                result = pow(firstNumber, 0.5)
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func takingPower(_ sender: Any) {
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                result = pow(firstNumber,secondNumber)
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func number1(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "1"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "1"
        }
    }

    @IBAction func number2(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "2"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "2"
        }
    }

    @IBAction func number3(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "3"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "3"
        }
    }

    @IBAction func number4(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "4"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "4"
        }
    }

    @IBAction func number5(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "5"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "5"
        }
    }

    @IBAction func number6(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "6"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "6"
        }
    }

    @IBAction func number7(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "7"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "7"
        }
    }

    @IBAction func number8(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "8"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "8"
        }
    }

    @IBAction func number9(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "9"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "9"
        }
    }

    @IBAction func number0(_ sender: Any) {
        if isTypingFirstNumber && !isTypingSecondNumber {
            firstText.text = (firstText.text ?? "") + "0"
        } else if !isTypingFirstNumber && isTypingSecondNumber {
            secondText.text = (secondText.text ?? "") + "0"
        }
    }
    

    @IBAction func oneCharacter(_ sender: Any) {
        if isTypingFirstNumber {
            if let text = firstText.text, !text.isEmpty {
                firstText.text = String(text.dropLast())
            }
        } else if isTypingSecondNumber {
            if let text = secondText.text, !text.isEmpty {
                secondText.text = String(text.dropLast())
            }
        }
    }
    
    
    @IBAction func allCharacters(_ sender: Any) {
        if isTypingFirstNumber {
            firstText.text = ""
        } else {
            secondText.text = ""
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == firstText {
            isTypingFirstNumber = true
            isTypingSecondNumber = false
        } else if textField == secondText {
            isTypingFirstNumber = false
            isTypingSecondNumber = true
        }
        // Klavye açılmasın
        return false
    }
    
    
    
    
    
    
    
    
    
    
}


