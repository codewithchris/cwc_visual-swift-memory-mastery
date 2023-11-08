import Foundation

/* These two classes have a strong reference to each other.
 Run this Playground. The deinit functions will NOT run
 because there is a retain cycle happening here.
 
 YOUR TASK
 Apply the two steps for fixing a retain cycle:
   1. Identify who the child is.
   2. Make child have a weak or unowned reference to parent.
*/

class Student {
    var reportCard: ReportCard?
    
    deinit {
        print ("Deallocating Student")
    }
}

class ReportCard {
    var student: Student?
    
    deinit {
        print ("Deallocating ReportCard")
    }
}

var mary: Student? = Student()
var reportA1: ReportCard? = ReportCard()

mary?.reportCard = reportA1
reportA1?.student = mary

// Your goal is to get this code below to run the deinit functions:
mary = nil
reportA1 = nil
