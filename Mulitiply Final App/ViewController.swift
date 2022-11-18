//
//  ViewController.swift
//  Mulitiply Final App
//
//  Created by Draeden P Rowe (Student) on 11/14/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var operatorLabel: UILabel!
    @IBOutlet weak var marioKartImageView: UIImageView!
    @IBOutlet weak var evenOrOddImageView: UIImageView!
    @IBOutlet weak var operatorsSegmentedControl: UISegmentedControl!
    @IBOutlet weak var number1Slider: UISlider!
    @IBOutlet weak var number2Slider: UISlider!
    @IBOutlet weak var outputLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        number1TextField.delegate = self
        number2TextField.delegate = self
    }
    
    var output = 0
//Draeden Section
    
    @IBAction func numberSlider1(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        number1TextField.text = String(currentValue)
        //textOutlet.text = String(currentValue)

    }
    
    @IBAction func numberSlider2(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        number2TextField.text = String(currentValue)
        //textOutlet.text = String(currentValue)
        
    }
    
    
    @IBAction func changeOperations(_ sender: Any) {
        let firstNumber = number1TextField.text!
        let number1 = (firstNumber as NSString).integerValue
        let secondNumber = number2TextField.text!
        let number2 = (secondNumber as NSString).integerValue
        
        switch operatorsSegmentedControl.selectedSegmentIndex {
        case 0:
            output = number1 + number2
            operatorLabel.text = "+"

        case 1:
            output = number1 - number2
            operatorLabel.text = "-"

        case 2:
            output = number1 * number2
            operatorLabel.text = "*"
            
        case 3:
            output = number1 / number2
            operatorLabel.text = "/"
            
        case 4:
            output = number1 % number2
            operatorLabel.text = "%"

        default:
            output = number1 + number2
            operatorLabel.text = "+"
    }
}
        
    @IBAction func calculate(_ sender: Any) {
        outputLabel.text = "\(output)"
        number1TextField.resignFirstResponder()
        number2TextField.resignFirstResponder()
        //Jack Section
        if output == 64{
            marioKartImageView.image = UIImage(named: "waluigi")
        }
        else{
            marioKartImageView.image = UIImage(named: "brentpeterson")
        }

    }
    
    
    
//Jack Section
    @IBAction func clearApp(_ sender: Any) {
    }
    
    
}

