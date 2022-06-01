//
//  CopierTest.swift
//  KataTests
//
//  Created by Aldrin Gama on 2022/05/31.
//

import Cuckoo
import XCTest
@testable import Kata

class CopierTest: XCTestCase {

    private var systemUnderTest: Copier!
    private var mockDestination = MockDestination()
    private var mockSource = MockSource()
    var indexCounter = 0
    
    override func setUp() {
        super.setUp()
        systemUnderTest = Copier(src: mockSource,
                                 dest: mockDestination)
    }

    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func testThatCopyCopiesCharactersWhenNoErrors() {
        
        // Sample string: "MySwiftMyTest"
        // Expected behavior is that program should return "MySwiftMyTest"
        
        mockSource.source = "SourceTest"
        mockSource.readCharInvokedCounter += mockSource.source.count
        mockSource.index = 0
        
        stub(mockDestination) {
            when($0.writeChar(char: any())).thenDoNothing()
        }

        systemUnderTest.copy()

        verify(mockDestination, times(mockSource.source.count)).writeChar(char: any())
        mockSource.verify()
    }
    
    
    func testThatCopyCopiesCharactersWhenThereIsNewlineCharacterWithinTheInputString() {
        // Sample string: "MySwift\nmyTest"
        // Expected behavior is that program should return "MySwift"
        
        mockSource.source = "MySwift\nmyTest"
        mockSource.readCharInvokedCounter += 8
        mockSource.index = 0
        
        
        stub(mockDestination) {
            when($0.writeChar(char: any())).thenDoNothing()
        }

        systemUnderTest.copy()

        verify(mockDestination, times(7)).writeChar(char: any())
        mockSource.verify()
    }
    
    func testThatCopyCopiesCharactersWhenThereIsANewLineCharacter() {
    
        mockSource.source = "\n"
        mockSource.readCharInvokedCounter += mockSource.source.count
        mockSource.index = 0
        
        stub(mockDestination) {
            when($0.writeChar(char: any())).thenDoNothing()
        }
        
        systemUnderTest.copy()
        
        verify(mockDestination, never()).writeChar(char: any())
        mockSource.verify()
    } 
}


