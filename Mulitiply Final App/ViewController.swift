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
        
        operatorLabel.textAlignment = .center
        operatorLabel.sizeToFit()
    }
    
    var output = 0
//Draeden Section
    
    @IBAction func numberSlider1(_ sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 1000
        number1TextField.text = String(Int(sender.value))

    }
    
    @IBAction func numberSlider2(_ sender: UISlider) {
        sender.minimumValue = 0
        sender.maximumValue = 1000
        number2TextField.text = String(Int(sender.value))
        
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
        //Stretch 8
        if output < 64{
            marioKartImageView.image = UIImage(named: "brentpeterson")
        }
        if output > 64{
            marioKartImageView.image = UIImage(named: "geicoGecko")
        }
            
        //Stretch 9
        if output % 2 == 0{
            evenOrOddImageView.image = UIImage(named: "williem")
        }
        else{
            evenOrOddImageView.image = UIImage(named: "travisscott")
        }

    }
    
    
    
//Jack Section
    @IBAction func clearApp(_ sender: Any) {
        number1TextField.text = " "
        number2TextField.text = " "
        marioKartImageView.image = UIImage(named: "transparent")
        evenOrOddImageView.image = UIImage(named: "transparent")
        outputLabel.text = "Output"
        operatorLabel.text = ""
        
    }
    
    
}
