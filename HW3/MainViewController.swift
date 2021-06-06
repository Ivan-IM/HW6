//
//  ViewController.swift
//  HW3
//
//  Created by Иван Маришин on 05.06.2021.
//

import UIKit

protocol ViewSetColorDelegate {
    func setColor(color: UIColor)
}

class MainViewController: UIViewController, ViewSetColorDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ColorSettingsViewController else { return }
        destination.delegate = self
    }
    
    func setColor(color: UIColor) {
        view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) { }
}

