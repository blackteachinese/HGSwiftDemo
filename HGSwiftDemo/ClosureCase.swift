//
//  ClosureCase.swift
//  HGSwiftDemo
//
//  Created by Hugo on 5/21/23.
//

import UIKit


class ClosureCase {
    
     func test() {
        // Do any additional setup after loading the view.
        
        self.tailClosure1(a: 2) { b in
            
        }
        
        self.tailClosure2 { _ in
            
        }
        
        testClosure()
        testEscapingClosure()
    }
    
    func goodClosure () {
        // Trailing closures
        // right
        UIView.animate(withDuration: 0.3) {
            
        }
        
        // wrong
        UIView.animate(withDuration: 0.3) {
            
        } completion: { _ in
            
        }
        
        // right
        UIView.animate(withDuration: 2, animations: {
            
        }, completion: { _ in
            
        })
        // not parameters
        let closure1 = {() in
            print("not parameters")
        }
        closure1()
        // one parameters
        let closure2 = { (a: Int) in
            
        }
        closure2(12)
        // one return
        let closure3 = {() -> String in
            return "Hugo"
        }
        let name = closure3()
        // return and parameters
        let closure4 = {(a: Int) -> String in
            return "BT"
        }
        let nick = closure4(7)
    }
    
    func closureExpression() {
        let numbers = [1,9,3,8]
        // by function
        let sortClosure = { (a: Int,b: Int) -> Bool in
            return a < b
        }
        let numSorted1 = numbers.sorted(by: sortClosure)
        // by closure expression
        let numSorted2 = numbers.sorted {(a: Int, b: Int) -> Bool in
            return a < b
        }
        // inferred type to simplify
        let numSorted3 = numbers.sorted { a, b in
            return a < b
        }
        // simplify return value
        let numSorted4 = numbers.sorted { a, b in a < b}
        // simplify parameters name
        let numSorted5 = numbers.sorted {$0 < $1}
        print(numSorted5)
        // by operator
        let numbsorted6 = numbers.sorted(by: <)
    }
    
    // last parameter
    func tailClosure1(a: Int, completion:(Int)->()) {
        
    }
    
    // one parameter
    func tailClosure2(completion:(String)->())  {
        
    }
    
    // closure capture value
    func add(num:Int) -> ()->Int {
        var value = 0
        func result()->Int {
            value += num
            return value
        }
        return result
    }
    
    func testClosure(){
        let result1 = self.add(num: 10)
        print(result1())  //10
        print(result1())  //20
        print(result1())  //30
        let result2 = self.add(num: 12)
        print(result2())  //10
        print(result1())  //40
    }
    
    var result : () -> Void = {}
    var resultString = ""
    func showEscapingClosure(closure: @escaping ()->Void) {
        result = closure
    }
    
    func showUnEscapingClosure(closure: ()->Void) {
        closure()
    }
    
    func testEscapingClosure() {
        showEscapingClosure {
            self.resultString = "I am escaping closure"
        }
        showUnEscapingClosure {
            resultString = "I am unescaping closure"
        }
        print(resultString)
        result()
        print(resultString)
    }
    
    func deleteByAutoClosure(aClosure: () -> String) {
        
    }
    
    func testAutoclosure () {
        var arr = ["a","b","c"]
        
        let closure =  {
            arr.remove(at: 0)
        }
        deleteByAutoClosure(aClosure: closure)
    }
    
    
    
}
