//
//  DatePopupViewController.swift
//  ReusablePopups
//
//  Created by Mark Moeykens on 11/23/17.
//  Copyright © 2017 Mark Moeykens. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    var showTimePicker: Bool = false
    var onSave: ((_ data: String) -> ())?
    var delegate: PopupDelegate?
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    var formattedTime: String {
        get {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: datePicker.date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if showTimePicker {
            titleLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveButton.setTitle("Save Time", for: .normal)
        }
    }
    
    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        NotificationCenter.default.post(name: .saveDateTime, object: self)
        
        if showTimePicker {
            onSave?(formattedTime)
            delegate?.popupValueSelected(value: formattedTime)
        } else {
            onSave?(formattedDate)
            delegate?.popupValueSelected(value: formattedDate)
        }
        
        dismiss(animated: true)
    }
    
    deinit {
        print("DatePopupViewController was de-initialized.")
    }
}
