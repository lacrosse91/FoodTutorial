//
//  ViewController.swift
//  FoodTutorial
//
//  Created by 川内翔一朗 on 2019/02/02.
//  Copyright © 2019 川内翔一朗. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    @IBAction func setDeafaulTextLabel(_ sender: Any) {
        mealNameLabel.text = "Default Text"
    }
    //UITextFieldDelegate

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
}

