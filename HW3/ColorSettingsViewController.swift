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
    
    private var setColor = SetColor (red: 1.0, green: 1.0, blue: 1.0)
    //var delegate: colorSettingsViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
        
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        redField.text = String(format: "%.2f", redSlider.value)
        greenField.text = String(format: "%.2f", greenSlider.value)
        blueField.text = String(format: "%.2f", blueSlider.value)
        
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
        
        redField.text = String(format: "%.2f", redSlider.value)
        greenField.text = String(format: "%.2f", greenSlider.value)
        blueField.text = String(format: "%.2f", blueSlider.value)

    }
    @IBAction func donButton(_ sender: Any) {
        //delegate?.color(setColor: setColor)
        dismiss(animated: true)
    }
    @IBAction func setRed() {
    }
    @IBAction func setGreen() {
    }
    @IBAction func setBlue() {
    }
    
}

