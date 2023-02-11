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

    @IBOutlet private weak var result: UILabel!

    @IBAction func actionSegmentedControll(_ sender: Any) {
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            result.text = "りんご🍎"
        case 1:
            result.text = "バナナ🍌"
        case 2:
            result.text = "ぶどう🍇"
        case 3:
            result.text = "いちご🍓"
        default :
            print("該当なし")
        }
    }

    @IBAction func calculationButton(_ sender: Any) {
        let inputNumber1 = Int(firstTextField.text ?? "") ?? 0
        let inputNumber2 = Int(secondTextField.text ?? "") ?? 0



        // self.result.text = "\(result)"
    }
}

