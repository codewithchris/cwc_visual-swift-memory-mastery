//
//  SecondViewController.swift
//  ReusablePopups
//
//  Created by Mark Moeykens on 11/23/17.
//  Copyright © 2017 Mark Moeykens. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toDatePopupViewControllerSegue" {
        let popup = segue.destination as! DatePopupViewController
        popup.showTimePicker = false

        popup.onSave = { (data) in
            self.dateLabel.text = data
        }
    }
}
    
    func onSave(_ data: String) -> () {
        dateLabel.text = data
    }
}

