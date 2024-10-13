//
//  ViewController.swift
//  Lecture11
//
//  Created by Ana Oganesiani on 05.10.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var remainderSwitch: UISwitch!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "პასუხი"
        updateSwitchLabel()
    }
    
    @IBAction func calculateTapped(_ sender: UIButton) {
        calculate()
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateSwitchLabel()
    }
    
    func updateSwitchLabel() {
        if remainderSwitch.isOn {
            switchLabel.text = "ნაშთიანი გაყოფა"
        } else {
            switchLabel.text = "უნაშთო გაყოფა"
        }
    }
    
    func calculate() {
        if let firstNumberText = firstNumberTextField.text, let firstNumber = Int(firstNumberText){
            
            if let secondNumberText = secondNumberTextField.text, let secondNumber = Int(secondNumberText) {
                
                if secondNumber == 0 {
                    resultLabel.text = "ნულზე გაყოფა არ შეიძლება"
                } else {
                    if remainderSwitch.isOn {
                        let result = firstNumber % secondNumber
                        resultLabel.text = "პასუხი: \(result)"
                    } else {
                        let result = firstNumber / secondNumber
                        resultLabel.text = "პასუხი: \(result)"
                    }
                }
                
            }
        }
        
    }
    
}
