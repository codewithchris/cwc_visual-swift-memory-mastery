//
//  DelegateViewController.swift
//  ReusablePopups
//
//  Created by Mark Moeykens on 1/20/18.
//  Copyright © 2018 Mark Moeykens. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController {
  
    @IBOutlet weak var timeLabel: UILabel!
    var popup: DatePopupViewController?

    @IBAction func selectTime_TouchUpInside(_ sender: UIButton) {
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        popup = sb.instantiateInitialViewController() as? DatePopupViewController
        popup?.showTimePicker = true
        popup?.delegate = self
        self.present(popup!, animated: true)
    }
    
    @IBAction func dismiss_TouchUpInside(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    deinit {
        print("DelegateViewController was de-initialized.")
    }
}

// Conform this class to the Protocol "PopupDelegate"
extension DelegateViewController: PopupDelegate {
    func popupValueSelected(value: String) {
        timeLabel.text = value
//        popup?.delegate = nil
        popup = nil
    }
}
