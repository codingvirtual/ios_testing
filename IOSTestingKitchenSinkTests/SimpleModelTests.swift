//
//  SimpleFuncTests.swift
//  IOSTestingKitchenSink
//
//  Created by Grant Kemp on 09/10/2015.
//  Copyright © 2015 Grant Kemp. All rights reserved.
//

import XCTest
@testable import IOSTestingKitchenSink // use the Main Project Folder
class SimpleModelTests: XCTestCase {
    
    //FROM This awesome Tutorial: http://natashatherobot.com/swift-2-xcode-7-unit-testing-access/
    
    func testSimpleFunc() {
        let mySimpleModel  = SimpleModel()
        XCTAssert(mySimpleModel.simpleFunc() == true)
    }
 //Now Press the black squares next to your test to run
    
}
