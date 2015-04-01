//
//  FileIOTests.swift
//  FileIOTests
//
//  Created by Stephen Brimhall on 3/9/15.
//  Copyright (c) 2015 Brimhall Labs. All rights reserved.
//

import Cocoa
import XCTest
import FileIO

class FileIOTests: XCTestCase {
	
	private var write = FileOut(filename: "/Users/Stephen/text.txt",mode: IOFlags.clear);
	private var read = FileIn(filename: "/Users/Stephen/text.txt");
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
		write.write("hello");
		read.refresh();
		XCTAssert(read.nextLine() == "hello", "Pass");
		
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
