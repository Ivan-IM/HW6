//
//  ColorSettingViewController.swift
//  HW3
//
//  Created by Иван Маришин on 05.06.2021.
//

import UIKit



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
    
    var delegate: ViewSetColorDelegate?
    
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
    @IBAction func rgbTextField(_ sender: Any) {
        redSlider.value = Float(redField.text ?? "0") ?? 0.0
        greenSlider.value = Float(greenField.text ?? "0") ?? 0.0
        blueSlider.value = Float(blueField.text ?? "0") ?? 0.0
    }
    
    @IBAction func saveButton() {
        delegate?.setColor(color: colorView.backgroundColor ?? UIColor(red: 0, green: 1, blue: 0, alpha: 1))
    }
    
}
