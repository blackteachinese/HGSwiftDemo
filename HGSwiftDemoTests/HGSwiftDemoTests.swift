//
//  HGSwiftDemoTests.swift
//  HGSwiftDemoTests
//
//  Created by Hugo on 3/29/23.
//

import XCTest
@testable import HGSwiftDemo

final class HGSwiftDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

 
    
    func testTheBasicsCase() throws {
        VariableCase().test()
        BaseValueCase().test()
        TupleCase().test()
        optionalsCase().test()
    }
}
