//
//  ViewController.swift
//  kiyo_1230Kadai2
//
//  Created by 清川光司 on R 5/02/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!

    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var calculationResult: UILabel!
    private let resultErrorText: String = "割る数には0以外を入力して下さい"


    enum CalculationFormula: Int {
        case addition
        case subtraction
        case multiplication
        case division
    }

    @IBAction private func calculationButton(_ sender: Any) {
        let inputNumber1 = Float(firstTextField.text ?? "") ?? 0
        let inputNumber2 = Float(secondTextField.text ?? "") ?? 0
        actionSegmentedControl(number1: inputNumber1, number2: inputNumber2)
    }

    private func actionSegmentedControl(number1: Float, number2: Float) {
        let index = segmentedControl.selectedSegmentIndex
        guard let calculationFormula = CalculationFormula(rawValue: index) else {
            return
        }
        let result: String

        switch calculationFormula {
        case .addition:
            result = String(number1 + number2)
        case .subtraction:
            result = String(number1 - number2)
        case .multiplication:
            result = String(number1 * number2)
        case .division:
            if number2 == 0 {
                result = resultErrorText
            } else {
                result = String(number1 / number2)
            }
        }
        calculationResult.text = "\(result)"
    }
}
