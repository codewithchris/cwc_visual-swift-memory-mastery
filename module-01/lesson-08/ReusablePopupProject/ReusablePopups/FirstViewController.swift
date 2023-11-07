//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Mark Moeykens on 11/23/17.
//  Copyright © 2017 Mark Moeykens. All rights reserved.
//

import UIKit

class Person {
    //    unowned var car = Car()
    
    deinit {
        print("Released Person")
    }
}


class FirstViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    
    var observer: NSObjectProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myString = "Mark"
        let myInt = 8
        
        // 1. NOTIFICATIONS: OLD WAY
        //        NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateTime, object: nil)
        
        // 1. NOTIFICATIONS: NEW WAY
        observer = NotificationCenter.default.addObserver(forName: Notification.Name.saveDateTime, object: nil, queue: OperationQueue.main) { (notification) in
            let dateVc = notification.object as! DatePopupViewController
            self.dateLabel.text = dateVc.formattedDate
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
    
    // 1. NOTIFICATIONS: OLD WAY
    //    @objc func handlePopupClosing(notification: Notification) {
    //        let dateVc = notification.object as! DatePopupViewController
    //        dateLabel.text = dateVc.formattedDate
    //    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDatePopupViewControllerSegue" {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
        }
    }
}

