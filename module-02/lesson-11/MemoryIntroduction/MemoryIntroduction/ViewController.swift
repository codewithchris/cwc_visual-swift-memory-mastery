//
//  ViewController.swift
//  MemoryIntroduction
//
//  Created by ヒットり on 11/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mom: Parent?
        mom = Parent()
        
        mom = nil
    }
}

class Child {
    deinit {
        print("Deallocating Child")
    }
}

class Parent {
    var child = Child()
    
    deinit {
        print("Deallocating Parent")
    }
}
