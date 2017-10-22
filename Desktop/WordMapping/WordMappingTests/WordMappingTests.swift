//
//  WordMappingTests.swift
//  WordMappingTests
//
//  Created by Tarun Gupta on 10/21/17.
//  Copyright © 2017 Tarun Gupta. All rights reserved.
//

import XCTest
@testable import WordMapping

class WordMappingTests: XCTestCase {
	
	var vc = ViewController()
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
	
	func testWordMapping() {
		
		//shortest transformation sequence
		let length = vc.wordMapping(start: "smart", end: "brain", dict: ["start","tarun","stark","stack","strom","slack","sling","black","blank","bland","blend","brand","braid"])
		
		//return 0 if no transformation sequence
		//		let length = vc.wordMapping(start: "sail", end: "ruin", dict: ["start","tarun","stark","stack","strom","slack","sling","black","blank","bland","blend","brand","braid"])
		
		// print length of sequence
		print(length)
	}
	
	func testExample() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
	}
	
	func testPerformanceExample() {
		// This is an example of a performance test case.
		self.measure {
			// Put the code you want to measure the time of here.
		}
	}
	
}
