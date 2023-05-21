//
//  TheBasicsCase.swift
//  HGSwiftDemo
//
//  Created by Hugo on 5/21/23.
//

import Foundation


class VariableCase {
    
    func test() {
        // declaring constants and variables
        let aConstant = 2
        var aVariable = "10"

        // declare multiple constants and variables in single line
        var v1 = 0.0, v2 = 0.1, v3 = 10
        
        // type annotations to variables or constants
        var v4: String
        v4 = "welcome"
        
        // declare multiple related variables of the same type on a single line
        var red,green,blue : Double
        red = 0.2
        
        // print constant and variable
        print(red)
        print("the red clolor value is \(red)")
    }
  
}

class BaseValueCase {
    func test () {
        // int
        let minValue = UInt8.min
        let maxValue = UInt8.max
        
        // Type inference
        let inferenceToInt = 42
        let inferenceToDouble = 3.1415926
        let inferenceToDouble2 = 3 + 0.14159
        
        // number literals
        let decimalInteger = 19
        // binary number, with a 0b prefix
        let binaryInteger = 0b10001
        // an octal number, with a 0o prefix
        let octalInteger = 0o21
        // an hexadecimal number,with a 0x prefix
        let hexadecimalInteger = 0x22
        
        // extra formatting to make them easier to read
        let paddingDouble = 000123.456
        // extra userscores to help with readability
        let oneMillion = 1_000_000
        let justOverOneMillion = 1_000_000.000_000_1
        
        // numeric type conversion
        // integer conversion
//        let canBeNegative: UInt8 = -1
//        let tooBig : UInt8 = UInt8.max + 1
        
        // convert int8 to int16
        let twoThousand : UInt16 = 2_000
        let one: UInt8 = 1
        let twoThousandAndOne = twoThousand + UInt16(one)
        
        // int and floating-point conversion
        let three = 3
        let pointL1 = 0.14159
        let pi = Double(three) + pointL1
        let integerPi = Int(pi)
        
        // type aliases别名
        typealias AudioSample = UInt16
        var integerByAliases = AudioSample.min
        
        // booleans
        let boolTrue = true
        let boolFalse = false
        if boolFalse {
            
        } else {
            
        }
        
        let i = 1
        if i == 1 {
            
        }
        
      
    }
}

class TupleCase {
    func test() {
        // tuples
        var tuples1 : (Int,String)
        tuples1 = (404, "Not found")
        let http404Error = (404, "Not found")
        // decompose a tuple's content
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status message is \(statusMessage)")
        // ignore some parts of tuple with an underscore _
        let (justTheStatusCode, _) = http404Error
        print("The status code is \(justTheStatusCode)")
        // access the individual element values in a tuple using index numbers starting at zero
        print("The status code is \(http404Error.0)")
        print("The status message is \(http404Error.1)")
        // name the elements when the tuple is defined
        let http200Status = (statusCode: 200, description: "OK")
        // access the value using the element name
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.description)")
    }
}

class optionalsCase {
    func test() {
        let possibleNumber = "123a"
        var convertedNumber : Int?
        // return a optional Int
        convertedNumber = Int(possibleNumber)
        // set special value nil to an optional variable
        var serverResponseCode: UInt16? = 404
        serverResponseCode = nil
        // the variable is automatically set to nil if you define an optional type without providing a default value
        var defaultSetToNill : String?
        // if statements
        // find out whether the optional contains a value
        if convertedNumber != nil {
            print("convertedNumber contains some integer value.")
        }
        // forced unwrapping
        if convertedNumber != nil {
            print("convertedNumber contains some integer value of \(convertedNumber!).")
        }
        
        // Optional Binding
        // write an optional binding for an if statement as follows
        if let actualNumber = Int(possibleNumber) {
            print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
        } else {
            print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
        }
        // use the same variable name for optional binding
        let myNumber = Int(possibleNumber)
        /// here, myNumber is an optional integer
        if let myNumber = myNumber {
            /// here, myNumber is a non-optional integer
            print("MyNumber is \(myNumber)")
        }
        /// here, myNumber is an optional integer
        
        // use a shorter spelling to unwrap an optional value
        if let myNumber {
            print("MyNumber is \(myNumber)")
        }
        
        // you can include as many optinal bindings and boolean conditions in a single if statement, separated by commas
        // it like "&&" statement in C language
        if let firstNumber = Int("4"), let secondNumber = Int("42"),firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
        
        // implicitly(隐式) unwrapped optionals
        let possibleString: String? = "An optional string."
        // an optionals String, need to force unwrapped
        let forcedString: String = possibleString!
        //  an implicitly unwrapped optional, not need to foece unwrapped
        let assumedString: String! = "An implicity unwrapped optional string."
        let implicitString: String = assumedString
        // the type optionalString is Optional string because optionalString doesn't have an explicit type
        let optionalString = assumedString
        // check whether an implicitly unwrapped optionals is nil, the same way check a normal optional
        if assumedString != nil {
            print("assumedString is not nil, you can force unwrapped it, the value is \(assumedString!)")
        }
        // use optional binding to check whether an implicitly unwrapped optional is nill
        if let definiteString = assumedString {
            print(definiteString)
        }
        // you'll trigger a runtime error, if you try to access an implicitly unwrapped optional which is nil
        let nilString: String! = nil
        let accessNilString: String = nilString
    }
}
