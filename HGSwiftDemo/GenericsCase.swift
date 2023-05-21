//
//  GenericsCase.swift
//  HGSwiftDemo
//
//  Created by Hugo on 5/21/23.
//

import Foundation

class Ball {
    var name : String
    init(name: String = "Hugo") {
        self.name = name
    }
}

class GenericsCase {
    
    func write<Target:OutputStream>(target: inout Target) {
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
        ]
        let numbers = [16, 58, 510]
        let strings = numbers.map { (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
            } while number > 0
            return output
        }
    }
    
    func swap<T,U>(_ a: inout T, _ b: inout U) {
        var numbers = [Ball]()
        numbers.append(Ball(name: "BT"))
        numbers.append(Ball(name: "Hugo"))
        
        let names = numbers.map{$0.name}
    }
}


class GenericsCaseCaller {
    
    func test() {
        let object = GenericsCase()
        var n1 = NSNumber(value: 2)
        var n2 = NSNumber(value: 4)
        object.swap(&n1, &n2)
    }
}
