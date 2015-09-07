//
//  LessonsConstants.swift
//  IOSTestingKitchenSink
//
//  Created by Grant Kemp on 07/09/2015.
//  Copyright (c) 2015 Grant Kemp. All rights reserved.
//

import Foundation

class LessonsConstants {
    
    let numberOfLessons = 1
    var lesson = [Int:String]()
    
    init() {
        
        lesson[0] = "Hello World"
        // Based on http://osherove.com/tdd-kata-1/
        lesson[1] = "String Calculator"
    }
    
    // MARK: - Shared Instance
    
    class func sharedInstance() -> LessonsConstants {
        
        struct Singleton {
            static var sharedInstance = LessonsConstants()
        }
        
        return Singleton.sharedInstance
    }
}

    
