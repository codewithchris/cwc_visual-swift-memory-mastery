import Foundation

/* These two classes have a weak reference to each other.
 Run this Playground. The deinit functions will run
 because there is NO retain cycle.
 
 YOUR TASK
 Create a retain cycle between these two classes!
 Make it so the deinit functions do NOT run.
*/

class Driver {
    weak var car: Car?
    
    deinit {
        print ("Deallocating Driver")
    }
}

class Car {
    weak var driver: Driver?
    
    deinit {
        print ("Deallocating Car")
    }
}

var jaqueline: Driver? = Driver()
var bmw: Car? = Car()

jaqueline?.car = bmw
bmw?.driver = jaqueline

// Your goal is to create a retain cycle so the deinit functions do not run:
jaqueline = nil
bmw = nil
