//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by Mark Moeykens on 11/23/17.
//  Copyright © 2017 Mark Moeykens. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func selectTime_TouchUpInside(_ sender: UIButton) {
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! DatePopupViewController
        popup.showTimePicker = true
        popup.delegate = self
        self.present(popup, animated: true)
    }
}

// Conform this class to the Protocol "PopupDelegate"
extension SelectTimeViewController: PopupDelegate {
    func popupValueSelected(value: String) {
        timeLabel.text = value
    }
}
