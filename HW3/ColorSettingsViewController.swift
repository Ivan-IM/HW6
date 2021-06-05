//
//  ColorSettingViewController.swift
//  HW3
//
//  Created by Иван Маришин on 05.06.2021.
//

import UIKit

protocol colorSettingsViewControllerDelegate {
    func color(setColor: SetColor)
}

class ColorSettingsViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redField: UITextField!
    @IBOutlet weak var greenField: UITextField!
    @IBOutlet weak var blueField: UITextField!
    
    var delegate: colorSettingsViewControllerDelegate?
    var setColor: SetColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        redField.text = String(format: "%.2f", redSlider.value)
        greenField.text = String(format: "%.2f", greenSlider.value)
        blueField.text = String(format: "%.2f", blueSlider.value)
        
        redField.text = String(format: "%.2f", setColor.red)
        greenField.text = String(format: "%.2f", setColor.green)
        blueField.text = String(format: "%.2f", setColor.blue)
        
        redField.deligate = self
        greenField.deligate = self
        blueField.deligate = self
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)

    }
    @IBAction func donButton(_ sender: Any) {
        delegate?.color(setColor: setColor)
        dismiss(animated: true)
    }
  
}

extension ColorSettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setColor = SetColor(red: Float (redField.text ?? "") ?? 0,
                            green: Float(greenField.text ?? "") ?? 0,
                            blue: Float(blueField.text ?? "") ?? 0)
    }
}
