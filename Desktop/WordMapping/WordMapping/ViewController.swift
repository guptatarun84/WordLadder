//
//  ViewController.swift
//  WordMapping
//
//  Created by Tarun Gupta on 10/21/17.
//  Copyright © 2017 Tarun Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
//		let count = wordMapping(start: "smart", end: "brain", dict: ["start","tarun","stark","stack","strom","slack","sling","black","blank","bland","blend","brand","braid"])
//		print(count)
	}

	func wordMapping(start: String, end: String, dict: [String]) -> Int {
		
		func differByOneChar(s1: String, s2: String) -> Bool {
			if s1.count != s2.count {
				return false
			}
			var nDiff:Int = 0
			for i in 0..<s1.count {
				if Array(s1)[i] != Array(s2)[i] {
					nDiff += 1
				}
			}
			return nDiff == 1
		}
		
		// keep track of visited nodes
		var queue = [(String, Int)]()
		var visited = [String]()
		queue.append((start, 1))
		while queue.count>0 {
			let (curWord, depth) = queue.remove(at: 0)
			if differByOneChar(s1: curWord, s2: end) {
				return depth+1
			}
			for word in dict {
				if !visited.contains(word) && differByOneChar(s1: curWord, s2: word) {
					visited.append(word)
					print(word)
					queue.append((word, depth+1))
				}
			}
		}
		
		return 0
	}
}

