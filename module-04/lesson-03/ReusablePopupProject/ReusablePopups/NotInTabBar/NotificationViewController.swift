//
//  NotificationViewController.swift
//  ReusablePopups
//
//  Created by Mark Moeykens on 12/9/17.
//  Copyright © 2017 Mark Moeykens. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var observer: NSObjectProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main)
        { [unowned self] (notification) in
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
    
    @IBAction func selectDate_TouchUpInside(_ sender: UIButton) {
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! DatePopupViewController
        self.present(popup, animated: true)
    }
    
    @IBAction func dismiss_TouchUpInside(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    deinit {
        print("NotificationViewController was de-initialized.")
    }
}
