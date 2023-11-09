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
        
        var first: MyClass? = MyClass()
        var second = first
        var third = first
        
        first = nil
        second = nil
        third = nil
    }
}

class MyClass {
    var myInt: Int = 8
    
    deinit {
        print("MyClass will be deallocated.")
    }
}
