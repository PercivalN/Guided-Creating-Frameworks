//
//  Stack.swift
//  RPN
//
//  Created by Percy Ngan on 12/18/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation

// Reverse Polish notation

/*

W
5
A
===

Stack:
* Add to the top
* Remove from the top

*/

/*
ExpressibleByArrayLiteral

var array = [0, 1]
var stackArray: Stack = [0, 1]

*/

struct Stack<Element>: ExpressibleByArrayLiteral {

	typealias ArrayLiteralElement = Element

	// Stack(9, 10, 11) -> [9, 10, 11]
	init(arrayLiteral elements: Element...) {
		self.elements = elements
	}

	var elements: [Element]

	/*

	1
	2
	9
	===
	*/

	// push(90)
	// add to the stack
	mutating func push(_ element: Element) {
		elements.append(element)
	}

	mutating func pop() -> Element? {
		elements.popLast()
	}

	// Checks what is at the top of the stack
	func peek() -> Element? {
		elements.last
	}
}
