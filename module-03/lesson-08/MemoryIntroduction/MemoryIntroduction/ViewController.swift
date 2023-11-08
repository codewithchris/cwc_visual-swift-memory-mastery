//
//  ViewController.swift
//  MemoryIntroduction
//
//  Created by ヒットり on 11/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    func doAnimation(showLabel: Bool) {
        let text = "Some Text"
        
        UIView.animate(withDuration: 0.3) { [label = self.myLabel!] in
            if showLabel {
                label.alpha = 1
            } else {
                label.alpha = 0
            }
            label.text = text
        }
    }
    
}
