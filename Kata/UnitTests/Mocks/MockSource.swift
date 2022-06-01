//
//  MockSource.swift
//  KataTests
//
//  Created by Aldrin Gama on 2022/05/31.
//

import Foundation
import XCTest
@testable import Kata

class MockSource: Source {
    var index: Int = 0
    var source: String = ""
    var readCharInvokedCounter = 0
    
    func readChar() -> Character {
        if index < source.count {
            readCharInvokedCounter -= 1
            let output = Character(source[index])
            index += 1
            return output
        }
        return Character("\n")
    }
    
    func verify() {
        XCTAssertEqual(0, readCharInvokedCounter)
    }
}
