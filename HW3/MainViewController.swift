//
//  ViewController.swift
//  HW3
//
//  Created by Иван Маришин on 05.06.2021.
//

import UIKit

class MainViewController: UIViewController {

    var setColor = SetColor(red: 1.0, green: 1.0, blue: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: CGFloat(setColor.red), green: CGFloat(setColor.green), blue: CGFloat(setColor.blue), alpha: 1.0)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? ColorSettingsViewController else { return }
        settingsVC.setColor = setColor
        settingsVC.delegate = self
    }

}
extension MainViewController: colorSettingsViewControllerDelegate {
    func color(setColor: SetColor) {
        self.setColor = setColor
    }
    
    
    
}

