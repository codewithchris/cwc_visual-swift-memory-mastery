//
//  CallbackViewController.swift
//  ReusablePopups
//
//  Created by Mark Moeykens on 12/30/17.
//  Copyright © 2017 Mark Moeykens. All rights reserved.
//

import UIKit

class CallbackViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    var popup: DatePopupViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDatePopupViewControllerSegue" {
            popup = segue.destination as? DatePopupViewController
            popup?.showTimePicker = false

            popup?.onSave = { (data) in
                self.dateLabel.text = data
                self.popup = nil
            }
        }
    }
    
    @IBAction func dismiss_TouchUpInside(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    deinit {
        print("Deallocating CallbackViewController")
    }
}
