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
        
        var joe: Person?
        var dev: Job?
        
        joe = Person()
        dev = Job()
        
        joe?.job = dev
        dev?.person = joe
        
        joe = nil
        dev = nil
    }
}

class Job {
    var person: Person?
    
    deinit {
        print("Deallocating Job")
    }
}

class Person {
    var job: Job?
    
    deinit {
        print("Deallocating Person")
    }
}
