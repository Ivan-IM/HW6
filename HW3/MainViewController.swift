//
//  ViewController.swift
//  HW3
//
//  Created by Иван Маришин on 05.06.2021.
//

import UIKit



class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let destination = segue.destination as? ColorSettingsViewController else { return }
//        destination.delegate = self
//    }
    

}
extension MainViewController: colorSettingsViewControllerDelegate {
    func color(setColor: SetColor) {
        view.backgroundColor = UIColor(red: CGFloat(setColor.red), green: CGFloat(setColor.green), blue: CGFloat(setColor.blue), alpha: 1.0)
    }
    
    
    
}

